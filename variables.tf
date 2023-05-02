variable "gcp_project" {
  type = string
}

variable "gcp_location" {
  type = string
}

variable "gcp_service_name" {
  type = string
  default = "openshed"
}

variable "django_allowed_hosts" {
  type = string
}

variable "django_database_url" {
  type = string
}

variable "django_secret_key" {
  type = string
}

variable "django_debug" {
  type = bool
  default = false
}
