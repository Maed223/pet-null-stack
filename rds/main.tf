terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
  }
}

module "rds-stacks-test" {
  source  = "app.staging.terraform.io/markdecrane/rds-stacks-test/aws"
  version = "1.0.0"
}

variable "prefix" {
  type = string
}

resource "random_pet" "this" {
  prefix = var.prefix
  length = 3
}
