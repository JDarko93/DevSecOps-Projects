provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraformaugust230924" {
  bucket ="terraformaugust230924"
}