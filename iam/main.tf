locals {
  project = "${var.project_id}"
  service_accounts = "${var.service_accounts}"
  role = "${var.roles}"
  binding = "${var.bindings}"

  iam_permissions = [
    for k, v in "${var.bindings}":
    { "role" = k , "members" = v}
  ]
}

resource "google_service_account" "self" {
    count = "${length(local.service_accounts) > 0 ? length(local.service_accounts):0}"
    project = "${local.project}"
    account_id = "${element(keys(local.service_accounts),count.index)}"
    display_name = "${element(values(local.service_accounts),count.index)}" 
}

resource "google_project_iam_custom_role" "self" {
  count = "${length(local.role) > 0 ? length(local.role):0}"
  role_id = "${element(keys(local.role),count.index)}"
  title = "${element(keys(local.role),count.index)}"
  permissions = "${element(values(local.role),count.index)}"
}

resource "google_project_iam_binding" "self" {
  count = "${length(local.binding) > 0 ? length(local.binding):0}"
  project = "${local.project}"
  role    = "${element(keys("${local.binding}"),count.index)}"
  members = "${element(values("${local.binding}"),count.index)}"
}