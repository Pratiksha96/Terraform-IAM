provider "google" {
    credentials = file("gcp-trial-254611-a5ebbe667431.json")
    project = var.project
}