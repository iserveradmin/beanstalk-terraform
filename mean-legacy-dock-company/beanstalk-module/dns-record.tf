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
