variable api_id                  { type = string }
variable deployment_stage_name   { type = string }
variable root_domain             { type = string }
variable subdomain               { type = string }

variable common_tags            { type = map }

locals {
  # Common tags to be assigned to all resources
  common_tags = var.common_tags
}
