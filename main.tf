module "iam-management"{
  source = "./iam"
  project_id = "${var.project_id}"
  service_accounts = "${var.service_accounts}"
  iam_binding = "${var.iam_binding}"
  roles = "${var.roles}"
}

output "service-account-email" {
  value = "module.iam-management.service-account-email"
}
output "iam-binding-roles" {
  value = "module.iam-management.iam-binding-roles"
}
output "iam-binding-members" {
  value = "module.iam-management.iam-binding-members"
}
output "iam-custom-role" {
  value = "module.iam-management.iam-custom-role"
}