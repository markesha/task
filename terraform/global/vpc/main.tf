provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    encrypt = true
  }
}

resource "aws_vpc" "vpc" {
  cidr_block = "${var.range}"

  tags {
    Name = "${var.env}-vpc"
  }
}