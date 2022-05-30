resource "aws_api_gateway_base_path_mapping" "base_path_mapping" {
  api_id      = var.api_id
  stage_name  = var.deployment_stage_name
  domain_name = aws_api_gateway_domain_name.domain_ssl.domain_name
}
