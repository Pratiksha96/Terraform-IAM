output "service-account-email" {
  value = module.iam-management.service-account-email
  description = "Email of service account created."
}

output "iam-binding-roles" {
  value = module.iam-management.iam-binding-roles
  description = "Roles added to the project."
}

output "iam-binding-members" {
  value = module.iam-management.iam-binding-members
  description = "IAM Binding added on the members to the project."
}

output "iam-custom-role" {
  value = module.iam-management.iam-custom-role
  description = "Custom roles created in a project."
}