resource "google_cloud_run_service" "openshed" {
  name = var.gcp_service_name
  location = var.gcp_location

  template {
    spec {
      containers {
        image = "begblev/openshed:latest"
        ports {
          name = "http1"
          container_port = 8000
        }
        env {
          name = "ALLOWED_HOSTS"
          value = var.django_allowed_hosts
        }
        env {
          name = "DATABASE_URL"
          value = var.django_database_url
        }
        env {
          name = "SECRET_KEY"
          value = var.django_secret_key
        }
        dynamic env {
          for_each = var.django_debug ? [1] : []
          content {
            name = "DEBUG"
            value = true
          }
        }
      }
    }
  }

  traffic {
    percent = 100
    latest_revision = true
  }
}
