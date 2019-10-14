variable "project_id" {
    type = "string"
    description = "ID of the project in which the service account should be created"
    default = ""
}

variable "service_accounts" {
    type = list(object({
        service_account_id = string
        service_account_display_name = string
        service_account_project_id = string
    }))
    description = "Map of service accounts where the key is the account id and value is human readable and descriptive name"
    default = [{
        service_account_id = ""
        service_account_display_name = ""
        service_account_project_id = ""
    }]
}

variable "roles" {
    type = list(object({
        role_id = string
        title = string
        permissions = list(string)
        project = string
        stage = string
        description = string
    }))
    description = "Map of roles where the key is role id and value is list of permissions to given role"
    default = [{
        role_id = ""
        title = ""
        permissions = []
        project = ""
        stage = "GA"
        description = ""
    }]
}

variable "iam" {
    type = "map"
    description = "Map of roles where the key is role and value is list of members"
    default = {}
}
