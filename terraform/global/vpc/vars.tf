variable "region" {
  description = "The aws region (eu-central-1)"
  default = "eu-central-1"
}

variable "env" {
  description = "The env type (prod/stage/etc)"
  default = "dev"
}