locals {
  project = "${var.project_id}"
  iam_role = "${keys(var.iam)}"
  iam_members = "${values(var.iam)}"
}

resource "google_service_account" "self" {
  count = "${length(var.service_accounts) > 0 ? length(var.service_accounts):0}"
  account_id = var.service_accounts[count.index].service_account_id
  display_name = var.service_accounts[count.index].service_account_display_name
  project = var.service_accounts[count.index].service_account_project_id  
}

resource "google_project_iam_custom_role" "self" {
  count = "${length(var.roles) > 0 ? length(var.roles):0}"
  role_id = var.roles[count.index].role_id
  title = var.roles[count.index].title
  permissions = var.roles[count.index].permissions
  project = var.roles[count.index].project
  description = var.roles[count.index].description
}

resource "google_project_iam_binding" "self" {
  count = "${length(var.iam) > 0 ? length(var.iam):0}"
  project = "${local.project}"
  role    = "${element(local.iam_role,count.index)}"
  members = "${element(local.iam_members,count.index)}"
}