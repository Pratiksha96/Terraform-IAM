key_file_path = "key.json"

project_id = "gcp-trial-254611"

region = "us-central1"

zone = "us-central1-c"

service_accounts = [{
    service_account_id = "demo-service-account-1"
    service_account_display_name = "Has storage creation access"
    service_account_project_id = ""
}]

roles = [{
    role_id = "storageViewer"
    title = "Storage Viewer"
    permissions = ["storage.objects.list","storage.objects.get"]
    project = ""
    description = "Role to view storage."
    stage = "default"
}]

iam_binding = [{
    iam_role_id = "roles/compute.admin"
    iam_members = ["serviceAccount:demo-service-account-1@gcp-trial-254611.iam.gserviceaccount.com"]
    project_id = ""
},{
    iam_role_id = "projects/gcp-trial-254611/roles/storageViewer"
    iam_members = ["serviceAccount:demo-service-account-1@gcp-trial-254611.iam.gserviceaccount.com"]
    project_id = ""
}
]