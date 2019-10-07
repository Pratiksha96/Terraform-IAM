resource "google_service_account" "demo_service_account" {
    project = var.project
    account_id = var.service_account
    display_name = var.service_account
}