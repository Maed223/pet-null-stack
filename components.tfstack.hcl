# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

component "nested" {
  source = "./nested"
}

component "rds" {
  source = "./rds"
}
