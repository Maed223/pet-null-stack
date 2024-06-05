terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }
}


module "rds-stacks-test" {
  source  = "app.staging.terraform.io/example-org-6dff95/rds-stacks-test/aws"
  version = "1.0.4"
}

module "stack-mod" {
  source  = "app.staging.terraform.io/example-org-6dff95/stack-mod/root"
  version = "1.0.0"
}

module "kubeadm-token" {
  source  = "scholzj/kubeadm-token/random"
  version = "1.2.0"
}

output "x" {
  value = "test"

}
