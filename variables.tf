variable "gcp_project" {
  type        = string
  description = "GCP Project ID"
}

variable "gcp_region" {
  type        = string
  description = "GCP region"
  default     = "us-central1"
}

variable "environment" {
  type        = string
  description = "Environment name"
  default     = "prod"
}

variable "secrets" {
  type        = map(string)
  description = "Map of secret names to values"
  default     = {}
  sensitive   = true
}