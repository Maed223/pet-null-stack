
module "rds" {
  source       = "app.staging.terraform.io/example-org-6dff95/rds/aws"
  version      = "1.0.1"
  db_encrypted = true
  db_name      = "djsfs"
  db_username  = "dsjhfks"
  db_password  = "dsjfs"
}
