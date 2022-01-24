resource "scalr_environment" "env" {
  name       = var.env_name
  account_id = var.account_id
  cost_estimation_enabled = true
}

output "scalr_environment_id" {
  value = scalr_environment.env.id
}

output "scalr_environment_name" {
  value = scalr_environment.env.name
}
