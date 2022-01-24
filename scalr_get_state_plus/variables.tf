
#
# Making default values unusable on purpose

# Real vaules will come from terraform.tfvars file

variable "region" {
}

variable "project" {
}

variable "tpl_input_mysql_csv" {
}


locals {

  #instance-list = csvdecode(file("instances.csv"))
  instance-list = csvdecode(var.tpl_input_mysql_csv)
  tpl_input_instances = [
    for x in local.instance-list : {
      project       = var.project
      region        = var.region
      instance-name = x.instance-name
      database-name = x.database-name
      db-type       = x.db-type
      tier          = x.tier
      disk_size     = x.disk_size
    }
  ]
}
