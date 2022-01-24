resource "scalr_workspace" "network_project" {
  name            = "network_project"
  environment_id  = scalr_environment.env.id
  terraform_version = var.terraform_version
  vcs_provider_id = var.vcs_provider_id
  vcs_repo {
      identifier          = var.network_project_vcs_repo_id
      branch          = var.network_project_vcs_repo_branch
  }
}


output "workspace_network_project_id" {
  value = scalr_workspace.network_project.id
}

output "workspace_network_project_name" {
  value = scalr_workspace.network_project.name
}

output "workspace_network_project_terraform_version" {
  value = scalr_workspace.network_project.terraform_version
}






