resource "null_resource" "test" {}

terraform {
  backend "s3" {
    bucket = "pooja-devops-bucket"
    key    = "test/terraform.tfstate"
    region = "us-east-1"
  }
}
