terraform {
 # backend "remote" {
         # The name of your Terraform Cloud organization.
  #  organization = "ssm52"

#         # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "learn-terraform-github-actions"
#    }
  }
}

#     # An example resource that does nothing.
resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!"
  }
}


resource "google_storage_bucket" "my-bucket" {
  name          = "bkt-demo-000"
  location      = "us-central1"
  project = "ss-dev-01"
  force_destroy = true
  public_access_prevention = "enforced"
}

resource "google_storage_bucket" "my-bucket2" {
  name          = "bkt-demo-002"
  location      = "us-central1"
  project = "ss-dev-01"
  force_destroy = true
  public_access_prevention = "enforced"
}
