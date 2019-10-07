resource "google_project_iam_binding" "storage-account-iam" {
  project = var.project
  role    = var.role

  members = [
    "serviceAccount:${google_service_account.demo_service_account.email}",
    "user:alkarana1997@gmail.com",
  ]
}

resource "google_project_iam_binding" "custom-account-iam" {
  project = var.project
  role    = "projects/gcp-trial-254611/roles/myCustomRole"

  members = [
    "serviceAccount:${google_service_account.demo_service_account.email}",
  ]
}