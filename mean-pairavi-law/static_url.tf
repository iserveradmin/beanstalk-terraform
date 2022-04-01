# module static_url {
#   source                = "./route53"
#   root_domain           = var.root_domain
#  # subdomain             = var.subdomain  (subdomain support in code still in progress)
#   cname                = aws_api_gateway_rest_api.main.id
#   zone_id =           aws_api_gateway_deployment.dev.stage_name
# }
