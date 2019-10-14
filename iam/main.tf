// resource to provision service account in GCP
resource "google_service_account" "self" {
  count = "${length(var.service_accounts) > 0 ? length(var.service_accounts):0}"
  account_id = var.service_accounts[count.index].service_account_id
  display_name = var.service_accounts[count.index].service_account_display_name
  project = var.service_accounts[count.index].service_account_project_id  
}

// resource to provision user define role in GCP
resource "google_project_iam_custom_role" "self" {
  count = "${length(var.roles) > 0 ? length(var.roles):0}"
  role_id = var.roles[count.index].role_id
  title = var.roles[count.index].title
  permissions = var.roles[count.index].permissions
  project = var.roles[count.index].project
  description = var.roles[count.index].description
}

// resource to provision user defined IAM Binding in a project
resource "google_project_iam_binding" "self" {
  count = "${length(var.iam) > 0 ? length(var.iam):0}"
  project = var.iam[count.index].project_id
  role    = var.iam[count.index].iam_role_id
  members = var.iam[count.index].iam_members

  depends_on = [
    google_service_account.self
  ]
}