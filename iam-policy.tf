data "google_iam_policy" "my-policy_data" {
#   binding {
#     role = var.role
#     members = [
#       "serviceAccount:demo-service-account@gcp-trial-254611.iam.gserviceaccount.com",
#     ]
#   }

  binding {
    role = "projects/gcp-trial-254611/roles/myCustomRole"

    members = [
      "serviceAccount:demo-service-account@gcp-trial-254611.iam.gserviceaccount.com",
    ]
  }
}