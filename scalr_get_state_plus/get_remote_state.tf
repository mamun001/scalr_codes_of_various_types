

# This is so that this template can grab the INITIAL state that this workspace got before any new resources can be
#   created
#
#   name = Name of the workspace that holds the INITIAL state
#   organization = ORG ID of foobarles in Scalr

data "terraform_remote_state" "remote-state" {
  backend = "remote"

  config = {
    hostname     = "my.scalr.com"
    organization = "org-sq02ik73855mhb8"
    workspaces = {
      name = "testing-terraformer"
    }
  }
}
