terraform {
  backend "gcs" {
  }
}

provider "google" {
  project = var.gcp_project
}
