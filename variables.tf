variable "aws_organization" {
  description = "The organization name in aws organizations"
  nullable    = false
  default     = false
}

variable "aws_organization_parent_id" {
  description = "Organizational Unit parent organization id"
  nullable    = false
  default     = false
}

variable "aws_organization_management_account_email" {
  description = "Email account to invite to aws, must be unique but you can use the '+' trick"
  nullable    = false
  default     = false
}

variable "aws_organization_management_account_name" {
  description = "Management account name"
  nullable    = false
  default     = false
}