output "service-account-email" {
  value = ["${google_service_account.service_account.*.email}"]
  description = "Service account email"
}
output "iam-binding-roles" {
  value = ["${google_project_iam_binding.iam_binding.*.role}"]
}
output "iam-binding-members" {
  value = ["${google_project_iam_binding.iam_binding.*.members}"]
}
output "iam-custom-role" {
  value = ["${google_project_iam_custom_role.custom_role.*.role_id}"]
}