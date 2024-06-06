terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
  }
}

module "stack-mod" {
  source  = "app.staging.terraform.io/example-org-6dff95/stack-mod/root"
  version = "1.0.0"
}
