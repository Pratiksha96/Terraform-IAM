# resource "google_service_account_iam_binding" "storage-account-iam" {
#   service_account_id = "${google_service_account.demo_service_account.name}"
#   role               = var.role

#   members = [
#     "demo-service-account@gcp-trial-254611.iam.gserviceaccount.com",
#   ]
# }

# resource "google_service_account_iam_binding" "custom-account-iam" {
#   service_account_id = "${google_service_account.demo_service_account.name}"
#   role               = "projects/gcp-trial-254611/roles/myCustomRole"

#   members = [
#     "demo-service-account@gcp-trial-254611.iam.gserviceaccount.com",
#   ]
# }