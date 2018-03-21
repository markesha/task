provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "terraform-state-for-${var.env}-env"
    region = "${var.region}"
    key = "${var.env}/global/vpc/terraform.tfstate"
    encrypt = true
  }
}

resource "aws_vpc" "${var.env}-vpc" {
  cidr_block = "${var.range}"

  tags {
    Name = "${var.env}-vpc"
  }
}