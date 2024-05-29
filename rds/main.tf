terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }

    aws = {
      source  = "hashicorp/aws"
      version = "3.32.0"
    }
  }
}


module "rds" {
  source       = "app.staging.terraform.io/example-org-6dff95/rds-stacks-test/aws"
  version      = "1.0.1"
  db_encrypted = true
  db_name      = "djsfs"
  db_username  = "dsjhfks"
  db_password  = "dsjfs"
}
