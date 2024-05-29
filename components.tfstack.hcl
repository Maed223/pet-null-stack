# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

required_providers {
  random = {
    source  = "hashicorp/random"
    version = "3.5.1"
  }

  aws = {
      source = "hashicorp/aws"
      version = "3.32.0"
    }
}

provider "random" "this" {}
provider "aws" "this" {
  region = "us-east-2"
}

component "rds" {
  source = "./rds"

  providers = {
    random = provider.random.this
    aws = provider.aws.this
  }
}
