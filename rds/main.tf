terraform {
  required_providers {
    null = {
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

output "prefix" {
  value = var.prefix

}
