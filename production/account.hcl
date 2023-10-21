locals {
  account_name   = "production"
  aws_account_id = get_env("PRODUCTION_ACCOUNT_ID", "")
  iam_role       = get_env("PRODUCTION_ROLE", "")
}