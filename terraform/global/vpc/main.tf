provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    encrypt = true
  }
}

module "vpc" {
  source = "git::git@github.com:markesha/tf-modules.git//vpc?ref=0.0.3"

  cidr_block = "10.0.0.6/24"
}