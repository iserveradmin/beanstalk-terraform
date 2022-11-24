
data "aws_route53_zone" "root_domain" {
  name         = var.root_domain
  private_zone = false
}

resource "aws_acm_certificate" "static_url" {
  domain_name       = var.sub_domain != "" ? "${var.sub_domain}.${var.root_domain}" :  var.root_domain
  validation_method = "DNS"
  subject_alternative_names = var.sub_domain != "" ? [] :  ["www.${var.root_domain}"]
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
