
# This calls the module on calr registry
# Code can be copied from "instructions" link on the module page on scalr site

module "mysql" {
  source                     = "my.scalr.com/acc-sqjrmlaec46dacg/mysql/google"
  version                    = "1.0.0"
  modinput_cloudsqlinstances = local.tpl_input_instances
}
