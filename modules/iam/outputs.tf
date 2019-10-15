output "service-account-email" {
  value = ["${google_service_account.service_account.*.email}"]
  description = "Email of service account created."
}
output "iam-binding-roles" {
  value = ["${google_project_iam_binding.iam_binding.*.role}"]
  description = "Roles added to the project."
}
output "iam-binding-members" {
  value = ["${google_project_iam_binding.iam_binding.*.members}"]
  description = "IAM Binding added on the members to the project."
}
output "iam-custom-role" {
  value = ["${google_project_iam_custom_role.custom_role.*.role_id}"]
  description = "Custom roles created in a project."
}