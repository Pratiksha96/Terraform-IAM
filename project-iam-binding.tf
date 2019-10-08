resource "google_project_iam_binding" "storage-account-iam" {
  project = var.project_id
  role    = var.role

  members = [
    "serviceAccount:${google_service_account.demo_service_account.email}",
  ]
}