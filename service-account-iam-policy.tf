resource "google_service_account_iam_policy" "custom-account-iam" {
  service_account_id = ""projects/gcp-trial-254611/serviceAccounts/admin-account@gcp-trial-254611.iam.gserviceaccount.com"
  policy_data = "${data.google_iam_policy.my-policy_data.policy_data}"
}