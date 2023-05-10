output "organizational_unit_account_id" {
  value     = aws_organizations_account.management_account.id
  sensitive = false
}