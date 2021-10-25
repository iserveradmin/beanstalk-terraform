# module static_url {
#   source                = "../route53"
#   root_domain           = var.root_domain
#   subdomain             = var.subdomain
#   api_id                = aws_api_gateway_rest_api.main.id
#   deployment_stage_name = aws_api_gateway_deployment.dev.stage_name
# }
