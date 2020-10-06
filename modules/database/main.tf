resource "random_id" "name_suffix" {
  byte_length = 4
}

resource "google_sql_database_instance" "base" {
  name             = "${var.name}-${random_id.name_suffix.hex}"
  database_version = "POSTGRES_11"
  region           = var.location

  settings {
    tier = var.tier

    location_preference {
      zone = "${var.location}-${var.zone}"
    }

    maintenance_window {
      day  = "7"  # sunday
      hour = "3"  # 3am
    }

    ip_configuration {
      ipv4_enabled = "true"
      authorized_networks {
        value = var.access_cidr
      }
    }
    // ip_configuration {
    //   dynamic "authorized_networks" {
    //     for_each = local.onprem
    //     iterator = onprem
    //
    //     content {
    //       name  = "onprem-${onprem.key}"
    //       value = onprem.value
    //     }
    //   }
    // }
  }
}

resource "random_id" "user_password" {
  byte_length = 8
}

resource "google_sql_user" "base_user" {
  name     = var.user_name
  instance = google_sql_database_instance.base.name
  host     = var.user_host
  password = var.user_password == "" ? random_id.user_password.hex : var.user_password
}

resource "google_sql_ssl_cert" "client_cert" {
  common_name = "development"
  instance    = google_sql_database_instance.base.name
}
