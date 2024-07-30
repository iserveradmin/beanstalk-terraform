terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "MDS_Brand"

    workspaces {
       name = "mean-lands-end-marine" # provide github repository name here.
    }
  }
}