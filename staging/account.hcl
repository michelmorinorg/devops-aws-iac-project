locals {
  account_name   = "staging"
  aws_account_id = get_env("STAGING_ACCOUNT_ID", "")
  iam_role       = get_env("STAGING_ROLE", "")
}