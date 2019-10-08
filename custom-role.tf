resource "google_project_iam_custom_role" "my-custom-role" {
  role_id     = var.custom_role_id
  title = var.custom_role_id
  permissions = var.permissions_list
}