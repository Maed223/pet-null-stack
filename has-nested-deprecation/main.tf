terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
  }
}

module "stack-mod" {
  source  = "app.staging.terraform.io/markdecrane/stack-mod/root"
  version = "1.0.0"
}

variable "instances" {
  type = number
}

variable "prefix" {
  type = string
}

resource "random_pet" "this" {
  prefix = var.prefix
  length = var.instances
}

output "x" {
  value = random_pet.this.id
}
