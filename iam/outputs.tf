output "service-account-email" {
  value = ["${google_service_account.self.*.email}"]
  description = "Service account email"
}
output "iam-binding-roles" {
  value = ["${google_project_iam_binding.self.*.role}"]
}
output "iam-binding-members" {
  value = ["${google_project_iam_binding.self.*.members}"]
}
output "iam-custom-role" {
  value = ["${google_project_iam_custom_role.self.*.role_id}"]
}