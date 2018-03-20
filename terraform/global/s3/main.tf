provider "aws" {
  region = "${var.region}"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-state-for-${var.env}-env"

  versioning {
    enabled = true
  }
}