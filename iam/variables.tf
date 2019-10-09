variable "project_id" {
    type = "string"
    description = "ID of the project in which the service account should be created"
    default = ""
}

variable "service_accounts" {
    type = "map"
    description = "Map of service accounts where the key is the account id and value is human readable and descriptive name"
    default = {}
}

variable "roles" {
    type = "map"
    description = "Map of roles where the key is role id and value is list of permissions to given role"
    default = {}
}

variable "bindings" {
    type = "map"
    description = "Map of roles where the key is role and value is list of members"
    default = {}
}

# variable "key_file_path" {
#     type = "string"
#     description = "Path to your key file"
#     //default = ""
# }