data "google_iam_policy" "my-policy_data" {
  binding {
    role = var.role
    members = [
        var.members
    ]
  }
}