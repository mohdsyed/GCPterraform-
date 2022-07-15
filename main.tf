terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.69.0"
    }

  }
}

provider "google" {
  project     = var.app_project
  credentials = "credentials.json"
  region      = var.gcp_region_1
  zone        = var.gcp_zone_1
}
provider "google-beta" {
  project     = var.app_project
  credentials = "credentials.json"
  region      = var.gcp_region_1
  zone        = var.gcp_zone_1
}
