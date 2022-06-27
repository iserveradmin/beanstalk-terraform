data "aws_elastic_beanstalk_hosted_zone" "current" {}
resource "aws_route53_record" "dns_update" {
  name    = aws_acm_certificate.static_url.domain_name
  type    = "A"
  zone_id = data.aws_route53_zone.root_domain.id

  alias {
    evaluate_target_health = true
    name                   = aws_elastic_beanstalk_environment.beanstalk_app_env.cname
    zone_id                = data.aws_elastic_beanstalk_hosted_zone.current.id
  }
}

resource "aws_route53_record" "dns_update_cname" {
  for_each = { for k in aws_acm_certificate.static_url.subject_alternative_names : k => k if var.sub_domain == "" }
  name     = each.value
  type     = "CNAME"
  ttl      = "5"
  zone_id  = data.aws_route53_zone.root_domain.id
  records  = [aws_acm_certificate.static_url.domain_name]
}
