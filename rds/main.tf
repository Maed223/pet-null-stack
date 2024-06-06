terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
  }
}


module "rds-stacks-test" {
  source  = "app.staging.terraform.io/example-org-6dff95/rds-stacks-test/aws"
  version = "1.0.4"
}

output "x" {
  value = "test"

}
