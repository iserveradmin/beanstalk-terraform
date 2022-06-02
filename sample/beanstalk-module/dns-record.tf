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
