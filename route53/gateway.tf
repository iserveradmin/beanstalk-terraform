data "aws_route53_zone" "root_domain" {
  name         = var.root_domain//"rialtic.dev"
  private_zone = false
}

resource "aws_acm_certificate" "static_url" {
  domain_name       = "${var.subdomain}.${var.root_domain}"
  validation_method = "DNS"
  tags              = local.common_tags
}

resource "aws_route53_record" "dns_validation_record" {
  for_each = {
    for dvo in aws_acm_certificate.static_url.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }

  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  ttl             = 60
  type            = each.value.type
  zone_id         = data.aws_route53_zone.root_domain.zone_id
}

resource "aws_acm_certificate_validation" "ssl_validation" {
  certificate_arn         = aws_acm_certificate.static_url.arn
  validation_record_fqdns = [for record in aws_route53_record.dns_validation_record : record.fqdn]
}

resource "aws_api_gateway_domain_name" "domain_ssl" {
  domain_name              = aws_acm_certificate.static_url.domain_name
  regional_certificate_arn = aws_acm_certificate_validation.ssl_validation.certificate_arn
  tags                     = local.common_tags

  endpoint_configuration {
    types = ["REGIONAL"]
  }
}

resource "aws_api_gateway_base_path_mapping" "base_path_mapping" {
  api_id      = var.api_id
  stage_name  = var.deployment_stage_name
  domain_name = aws_api_gateway_domain_name.domain_ssl.domain_name
}

resource "aws_route53_record" "dns_update" {
  name    = aws_acm_certificate.static_url.domain_name
  type    = "A"
  zone_id = data.aws_route53_zone.root_domain.id

  alias {
    evaluate_target_health = true
    name                   = aws_api_gateway_domain_name.domain_ssl.regional_domain_name
    zone_id                = aws_api_gateway_domain_name.domain_ssl.regional_zone_id
  }
}
