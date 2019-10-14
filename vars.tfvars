key_file_path = "key.json"

project_id = "gcp-trial-254611"

region = "us-central1"

zone = "us-central1-c"

service_accounts = [{
    service_account_id = "demo-service-account-1"
    service_account_display_name = "Has storage creation access"
    service_account_project_id = "gcp-trial-254611"
}]

roles = [{
    role_id = "storageViewer"
    title = "Storage Viewer"
    permissions = ["roles/storage.list","roles/storage.get"]
    project = "gcp-trial-254611"
    description = "Role to view storage."
    stage = "default"
}]

iam = {"projects/gcp-trial-254611/roles/storage_creation_role"=["serviceAccount:demo-service-account-1@gcp-trial-254611.iam.gserviceaccount.com"], 
"projects/gcp-trial-254611/roles/storage_access_role"=["serviceAccount:demo-service-account-2@gcp-trial-254611.iam.gserviceaccount.com"] 
"roles/compute.admin"=["serviceAccount:demo-service-account-3@gcp-trial-254611.iam.gserviceaccount.com"], "roles/iam.serviceAccountAdmin"=["serviceAccount:demo-service-account-4@gcp-trial-254611.iam.gserviceaccount.com"]
}