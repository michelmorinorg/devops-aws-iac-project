locals {
  account_name   = "development"
  aws_account_id = get_env("DEV_ACCOUNT_ID", "")
  iam_role       = get_env("DEV_ROLE", "")
}