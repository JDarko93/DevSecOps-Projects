provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraformseptembertest260825" {
  bucket = "terraformseptembertest260825"
}
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraformseptembertest260825"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}