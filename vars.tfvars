key_file_path = "key.json"
project_id = "gcp-trial-254611"
service_accounts = {"demo-service-account-1"="A demo service account 1","demo-service-account-2"="A demo service account 2"}
roles = {"custom_role"=["iam.roles.get","iam.roles.list"]}
iam = {"custom-role"=["serviceAccount:demo-service-account-1@gcp-trial-254611.iam.gserviceaccount.com"],
"roles/storage.admin"=["user:jainpratiksha2110@gmail.com"]}
