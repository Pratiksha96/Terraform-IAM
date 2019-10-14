key_file_path = "key.json"

project_id = "gcp-trial-254611"

region = "us-central1"

zone = "us-central1-c"

service_accounts = {"demo-service-account-1"="Has storage creation access","demo-service-account-2"="Has access to GCS storage","demo-service-account-3"="Has roles to provision compute engine","demo-service-account-4"="Roles to create SA and create Role Association"}

roles = {"storage_creation_role"=["storage.buckets.create","storage.objects.create"],"storage_access_role"=["storage.buckets.get","storage.buckets.list","storage.objects.get","storage.objects.list"]}

iam = {"projects/gcp-trial-254611/roles/storage_creation_role"=["serviceAccount:demo-service-account-1@gcp-trial-254611.iam.gserviceaccount.com"], 
"projects/gcp-trial-254611/roles/storage_access_role"=["serviceAccount:demo-service-account-2@gcp-trial-254611.iam.gserviceaccount.com"] 
"roles/compute.admin"=["serviceAccount:demo-service-account-3@gcp-trial-254611.iam.gserviceaccount.com"], "roles/iam.serviceAccountAdmin"=["serviceAccount:demo-service-account-4@gcp-trial-254611.iam.gserviceaccount.com"]
}