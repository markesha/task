provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = ""
    region = "eu-central-1"
    key = "dev/global/vpc/terraform.tfstate"
    encrypt = true
  }
}

resource "aws_vpc" "vpc" {
  cidr_block = "${var.range}"

  tags {
    Name = "${var.env}-vpc"
  }
}