# provider "google" {
#   credentials = "${file("gcp-trial-254611-928fa17499f1.json")}"
#   alias = "google-beta"
#   project = "${var.project_id}"
# }

# resource "google_storage_bucket" "default" {
#     name = "10-10-2019-bucket"
#     force_destroy = false
#     location = "EU"
#     storage_class = "REGIONAL"
#     project = "${var.project_id}"
# }
