locals {
  project = "${var.project_id}"
  custom_role = "${keys(var.roles)}"
  role_permissions = "${values(var.roles)}"
  iam_role = "${keys(var.iam)}"
  iam_members = "${values(var.iam)}"
  account_id = "${keys(var.service_accounts)}"
  display_name = "${values(var.service_accounts)}"
}

resource "google_service_account" "default" {
    count = "${length(var.service_accounts) > 0 ? length(var.service_accounts):0}"
    project = "${local.project}"
    account_id = "${element(local.account_id,count.index)}"
    display_name = "${element(local.display_name,count.index)}" 
}

resource "google_project_iam_custom_role" "self" {
  count = "${length(var.roles) > 0 ? length(var.roles):0}"
  role_id = "${element(local.custom_role,count.index)}"
  title = "${element(local.custom_role,count.index)}"
  permissions = "${element(local.role_permissions,count.index)}"
}

resource "google_project_iam_binding" "self" {
  count = "${length(var.iam) > 0 ? length(var.iam):0}"
  project = "${local.project}"
  role    = "${element(local.iam_role,count.index)}"
  members = "${element(local.iam_members,count.index)}"
}