provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "terraform-state-for-${var.env}-env"
    region = "eu-central-1"
    key = "${var.env}/global/s3/terraform.tfstate"
    encrypt = true
  }
}