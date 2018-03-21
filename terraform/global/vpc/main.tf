provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "terraform-state-for-dev-env"
    region = "eu-central-1"
    key = "dev/global/vpc/terraform.tfstate"
    encrypt = true
  }
}

resource "aws_vpc" "${var.env}-vpc" {
  cidr_block = "${var.range}"

  tags {
    Name = "${var.env}-vpc"
  }
}