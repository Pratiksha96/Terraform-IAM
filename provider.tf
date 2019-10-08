provider "google" {
    credentials = file(var.key_file_name)
    project = var.project_id
}