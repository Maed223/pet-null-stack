# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

module "nested" {
  source  = "app.staging.terraform.io/example-org-6dff95/nested/someprovider"
  version = "1.0.1"
}

output "a" {
  value = "test"
}
