variable "project_id"{
    default = "gcp-trial-254611"
} 
variable "custom_role_id" {
    default = "myCustomRole"
}
variable "demo_service_account" {
    default = "demo-service-account"
}

variable "role" {
    default = "roles/storage.admin"
}

variable "key_file_name" {
    default = "gcp-trial-254611-a5ebbe667431.json"
}

variable "permissions_list" {
  type    = list(string)
  default = ["iam.roles.list", "iam.roles.get"]
}

variable "binding" {
    type = list(object({
        role = string
        members = list
    }))

    default = [
        {
            role = "roles/storage.admin"
            members = [""]
        }
    ]
}