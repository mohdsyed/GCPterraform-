resource "google_sql_database_instance" "postgresql" {
  name             = "${var.app_name}-db"
  project          = var.app_project
  region           = var.gcp_region_1
  database_version = var.db_version
  deletion_protection = false

  settings {
    tier              = var.db_tier
    activation_policy = var.db_activation_policy
    disk_autoresize   = var.db_disk_autoresize
    disk_size         = var.db_disk_size
    disk_type         = var.db_disk_type
    pricing_plan      = var.db_pricing_plan

    location_preference {
      zone = var.gcp_zone_1
    }

    maintenance_window {
      day  = "7" # sunday
      hour = "3" # 3am
    }

    backup_configuration {
      binary_log_enabled = false
      enabled            = true
      start_time         = "1:00"
    }

    ip_configuration {
      ipv4_enabled = "true"
      authorized_networks {
        value = var.db_instance_access_cidr
      }
    }
  }
}
# create database
resource "google_sql_database" "postgresql_db" {
  name      = var.db_name
  project   = var.app_project
  instance  = google_sql_database_instance.postgresql.name
  charset   = var.db_charset
  collation = var.db_collation
}
# create user
resource "random_id" "user_password" {
  byte_length = 8
}
resource "google_sql_user" "postgresql_user" {
  name     = var.db_user_name
  project  = var.app_project
  instance = google_sql_database_instance.postgresql.name
  host     = var.db_user_host
  password = (var.db_user_password == "" ?
  random_id.user_password.hex : var.db_user_password)
}
resource "google_compute_network" "auto-tf-vpc" {
  name = var.name  
}


resource "google_compute_network" "custom-tf-vpc" {
  name = var.vpcname
  auto_create_subnetworks = "false"
}


resource "google_compute_subnetwork" "sub-us" {
  name = var.subnet
  network = google_compute_network.custom-tf-vpc.id
  ip_cidr_range = var.ipcidr
  region = var.gcp_region_1
}
resource "google_project" "service_project" {
  name                = "MyFirstProject"
  project_id          = "gifted-pillar-354815"
  #folder_id           = "REDACTED"
  #billing_account     = "REDACTED"
  auto_create_network = "false"
  labels              = {
    platform      = "platform"
    environment   = "env"
            }
  }

resource "google_compute_network" "vpc_network" {
  name                    = var.name
  auto_create_subnetworks = "false"
  routing_mode            = "GLOBAL"
  project                 = google_project.service_project.project_id
}
# Get the ID
output "network_id" {
value = google_compute_network.vpc_network.id
}

#Read back the network as a data source
data "google_compute_network" "vpc_netsrc" {
        project = google_project.service_project.project_id
        name = google_compute_network.vpc_network.name
}
output "readnet_id" {
value = data.google_compute_network.vpc_netsrc.id
}

# get the VPC from the other project to peer with
data "google_compute_network" "network-to-peer-with" {
  project = "gifted-pillar-354815"
  name = var.vpcname
}

# This fails here as the google_compute_network.vpc_network.id returns the vpc name and not 
# projects/aproject/global/networks/mynetwork which fails the regex
resource "google_compute_network_peering" "peering-setup" {
    name         = "peering-with-peering-anotherproject"
    network      = google_compute_network.vpc_network.id
    peer_network = data.google_compute_network.network-to-peer-with.id
    export_custom_routes = "false"
    import_custom_routes = "true"
    depends_on = [data.google_compute_network.network-to-peer-with, google_compute_network.vpc_network ]
  }
