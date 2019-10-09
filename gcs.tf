provider "google" {
  credentials = "${file("gcp-trial-254611-928fa17499f1.json")}"
  alias = "google-beta"
  project = "${var.project_id}"
}

resource "google_storage_bucket" "self" {
    name = "09-10-2019-bucket"
}
