terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "MDS_Brand"

    workspaces {
       name = "lightsail-firstapprovalsource"
    }
  }
}