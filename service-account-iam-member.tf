# resource "google_service_account_iam_member" "custom-account-iam" {
#   service_account_id = "projects/gcp-trial-254611/serviceAccounts/admin-account@gcp-trial-254611.iam.gserviceaccount.com"
#   role               = "projects/gcp-trial-254611/roles/myCustomRole"
#   member             = "serviceAccount:${google_service_account.demo_service_account.email}"
# }