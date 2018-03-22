provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    encrypt = true
  }
}

module "vpc" {
  source = "../../modules/tf-modules/vpc/"

  cidr_block = "10.0.0.0/16"
  env = "${var.env}"
}