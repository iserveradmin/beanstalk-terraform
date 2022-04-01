output invoke_url {
  value = "https://${aws_route53_record.dns_update.fqdn}"
}
