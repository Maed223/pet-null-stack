terraform {
  required_providers {
    null = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
  }
}

module "stack-mod" {
  source  = "app.staging.terraform.io/markdecrane/stack-mod/root"
  version = "1.0.0"
}
