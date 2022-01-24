resource "google_sql_database" "tfer--foobarsaas-002D-foobars-002D-internal" {
  charset   = "UTF8"
  collation = "en_US.UTF8"
  instance  = "foobarsaas"
  name      = "foobars-internal"
  project   = "sre-sandbox-243618"
}

resource "google_sql_database" "tfer--foobarsaas-002D-postgres" {
  charset   = "UTF8"
  collation = "en_US.UTF8"
  instance  = "foobarsaas"
  name      = "postgres"
  project   = "sre-sandbox-243618"
}

resource "google_sql_database" "tfer--dummy2-002D-postgres" {
  charset   = "UTF8"
  collation = "en_US.UTF8"
  instance  = "dummy2"
  name      = "postgres"
  project   = "sre-sandbox-243618"
}

resource "google_sql_database" "tfer--ms-002D-ac-002D-history-002D-106-002D-ac_history_2" {
  charset   = "UTF8"
  collation = "en_US.UTF8"
  instance  = "ms-ac-history-106"
  name      = "ac_history_2"
  project   = "sre-sandbox-243618"
}

resource "google_sql_database" "tfer--ms-002D-ac-002D-history-002D-106-002D-postgres" {
  charset   = "UTF8"
  collation = "en_US.UTF8"
  instance  = "ms-ac-history-106"
  name      = "postgres"
  project   = "sre-sandbox-243618"
}

resource "google_sql_database" "tfer--ms-002D-floorplans-002D-106-002D-floorplans" {
  charset   = "UTF8"
  collation = "en_US.UTF8"
  instance  = "ms-floorplans-106"
  name      = "floorplans"
  project   = "sre-sandbox-243618"
}

resource "google_sql_database" "tfer--ms-002D-floorplans-002D-106-002D-postgres" {
  charset   = "UTF8"
  collation = "en_US.UTF8"
  instance  = "ms-floorplans-106"
  name      = "postgres"
  project   = "sre-sandbox-243618"
}

