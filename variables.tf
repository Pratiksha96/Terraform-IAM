variable "key_file_path" {
    type = "string"
    description = "Path to your key file"
}

variable "project_id" {
    type = "string"
    description = "ID of the project in which the service account should be created"
    default = ""
}

variable "region" {
    type = "string"
    default = ""
}

variable "zone" {
    type = "string"
    default = ""
}

variable "service_accounts" {
    type = list(object({
        service_account_id = string
        service_account_display_name = string
        service_account_project_id = string
    }))
    description = "List of service accounts that contains service account id, service account display name and id of project that the service account is present in (default to provider configuration)"
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
    description = "List of role object where role id is to use this role, title is human readable title for the role, permissions are list of list of permissions granted for this role, project that service account will be created in (default to provider configuration)"
    default = [{
        role_id = ""
        title = ""
        permissions = []
        project = ""
        stage = "GA"
        description = ""
    }]
}

variable "iam_binding" {
    type = list(object({
        iam_role_id = string
        iam_members = list(string)
        project_id = string
    }))
    description = "List of roles where iam_role is role id of one role, iam_members is list of members and project id is project name (default to provider configuration)"
    default = [{
        iam_role_id = ""
        iam_members = []
        project_id = ""
    }]
}
