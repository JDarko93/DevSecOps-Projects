provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraformseptembertest260825" {
  bucket = "terraformseptembertest260825"
}

resource "aws_cloudwatch_log_group" "app_logs" {
  name              = "/devsecops/app"
  retention_in_days = 7
}

terraform {
  backend "s3" {
    # Replace this with your bucket name!
  bucket         = "terraformseptembertest260825"
  key            = "global/s3/terraform.tfstate"
  region         = "eu-west-2"
  }
}