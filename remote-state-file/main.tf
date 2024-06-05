resource "null_resource" "test" {}

terraform {
  backend "s3" {
    bucket = "poo-devops-project"
    key    = "test/terraform.tfstate"
    region = "us-east-1"
  }
}
