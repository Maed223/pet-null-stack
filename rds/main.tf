module "rds-stacks-test" {
  source  = "app.staging.terraform.io/markdecrane/rds-stacks-test/aws"
  version = "1.0.0"
}

output "x" {
  value = "test"

}
