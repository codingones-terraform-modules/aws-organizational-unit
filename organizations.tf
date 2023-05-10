resource "aws_organizations_organizational_unit" "organizational_unit" {
  name      = var.aws_organization
  parent_id = var.aws_organization_parent_id

  tags = local.tags
}

resource "aws_organizations_account" "management_account" {
  name      = var.aws_organization_management_account_name
  email     = var.aws_organization_management_account_email
  parent_id = aws_organizations_organizational_unit.organizational_unit.id
  lifecycle {
    ignore_changes = [role_name, iam_user_access_to_billing]
  }

  tags = local.tags
}
