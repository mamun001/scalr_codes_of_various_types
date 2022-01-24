resource "google_sql_database_instance" "tfer--foobarsaas" {
  database_version = "POSTGRES_11"
  name             = "foobarsaas"
  project          = "sre-sandbox-243618"
  region           = "us-central1"

  settings {
    activation_policy = "ALWAYS"
    availability_type = "ZONAL"

    backup_configuration {
      binary_log_enabled             = "false"
      enabled                        = "true"
      point_in_time_recovery_enabled = "false"
      start_time                     = "04:00"
    }

    crash_safe_replication = "false"

    database_flags {
      name  = "autovacuum"
      value = "on"
    }

    disk_autoresize = "true"
    disk_size       = "50"
    disk_type       = "PD_SSD"

    ip_configuration {
      authorized_networks {
        name  = "myip"
        value = "76.170.20.119/32"
      }

      ipv4_enabled = "true"
      require_ssl  = "false"
    }

    location_preference {
      zone = "us-central1-b"
    }

    maintenance_window {
      day  = "7"
      hour = "7"
    }

    pricing_plan     = "PER_USE"
    replication_type = "SYNCHRONOUS"
    tier             = "db-custom-2-7680"

    user_labels = {
      env   = "sandbox"
      usage = "internal"
    }
  }
}

resource "google_sql_database_instance" "tfer--dummy2" {
  database_version = "POSTGRES_11"
  name             = "dummy2"
  project          = "sre-sandbox-243618"
  region           = "us-central1"

  settings {
    activation_policy = "ALWAYS"

    backup_configuration {
      binary_log_enabled             = "false"
      enabled                        = "false"
      point_in_time_recovery_enabled = "false"
      start_time                     = "17:00"
    }

    crash_safe_replication = "false"
    disk_autoresize        = "true"
    disk_size              = "10"
    disk_type              = "PD_SSD"

    ip_configuration {
      ipv4_enabled = "true"
      require_ssl  = "false"
    }

    location_preference {
      zone = "us-central1-a"
    }

    pricing_plan     = "PER_USE"
    replication_type = "SYNCHRONOUS"
    tier             = "db-f1-micro"
  }
}

resource "google_sql_database_instance" "tfer--ms-002D-ac-002D-history-002D-106" {
  database_version = "POSTGRES_12"
  name             = "ms-ac-history-106"
  project          = "sre-sandbox-243618"
  region           = "us-central1"

  settings {
    activation_policy = "ALWAYS"
    availability_type = "REGIONAL"

    backup_configuration {
      binary_log_enabled             = "false"
      enabled                        = "true"
      point_in_time_recovery_enabled = "false"
      start_time                     = "18:00"
    }

    crash_safe_replication = "false"
    disk_autoresize        = "true"
    disk_size              = "10"
    disk_type              = "PD_SSD"

    ip_configuration {
      ipv4_enabled = "true"
      require_ssl  = "false"
    }

    location_preference {
      zone = "us-central1-a"
    }

    pricing_plan     = "PER_USE"
    replication_type = "SYNCHRONOUS"
    tier             = "db-custom-8-30720"
  }
}

resource "google_sql_database_instance" "tfer--ms-002D-floorplans-002D-106" {
  database_version = "POSTGRES_12"
  name             = "ms-floorplans-106"
  project          = "sre-sandbox-243618"
  region           = "us-central1"

  settings {
    activation_policy = "ALWAYS"
    availability_type = "REGIONAL"

    backup_configuration {
      binary_log_enabled             = "false"
      enabled                        = "true"
      point_in_time_recovery_enabled = "false"
      start_time                     = "18:00"
    }

    crash_safe_replication = "false"
    disk_autoresize        = "true"
    disk_size              = "200"
    disk_type              = "PD_SSD"

    ip_configuration {
      ipv4_enabled = "true"
      require_ssl  = "false"
    }

    location_preference {
      zone = "us-central1-a"
    }

    pricing_plan     = "PER_USE"
    replication_type = "SYNCHRONOUS"
    tier             = "db-custom-8-30720"
  }
}

