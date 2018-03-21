provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    encrypt = true
  }
}

module "vpc" {
  source = "github.com/markesha/tf-modules/vpc"

  cidr_block = "10.0.0.6/24"
}