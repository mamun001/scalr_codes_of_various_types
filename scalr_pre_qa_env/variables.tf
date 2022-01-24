
variable "account_id" {
  description = "scalr account id"
}

variable "env_name" {
  description = "scalr environment name"
}


variable "vcs_provider_id" {
  description = "ID of the VCS provider defined at the scalr account level"
}

variable "terraform_version" {
  description = "Terraform Version to be used the scalr to deploy stuff in the workspaces"
}

variable "service_project_vcs_repo_id" {
  description = "link to repo of service project template"
}

variable "service_project_vcs_repo_branch" {
  description = "branch repo of service project template"
}

variable "network_project_vcs_repo_id" {
  description = "link to repo of network project template"
}

variable "network_project_vcs_repo_branch" {
  description = "branch repo of network project template"
}



