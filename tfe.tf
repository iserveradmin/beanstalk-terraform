# data "tfe_organizations" "foo" {
# }


# output "teraform-org" {
#   value = data.tfe_organizations.foo.ids

# }

data "tfe_organization" "foo" {
  name = "MDS_Brand"
}

output "organization-id" {
    value = data.tfe_organization.foo.external_id
}
