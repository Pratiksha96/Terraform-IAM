data "google_iam_role" "roleInfo" {
  name = var.role
}

# output "the_role_permissions" {
#   value = "${data.google_iam_role.roleInfo.included_permissions}"
# }