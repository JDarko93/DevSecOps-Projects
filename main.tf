provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraformaugusttest230924" {
  bucket ="terraformaugusttest230924"
}
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraformaugusttest230924"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}