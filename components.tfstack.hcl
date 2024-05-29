# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

required_providers {
  random = {
    source  = "hashicorp/random"
    version = "3.5.1"
  }
}

provider "random" "this" {}

component "rds" {
  source = "./rds"

  providers = {
    random = provider.random.this
  }
}
