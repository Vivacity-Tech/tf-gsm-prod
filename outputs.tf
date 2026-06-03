output "secret_names" {
  value       = keys(google_secret_manager_secret.secrets)
  description = "List of created secret names"
}

output "secret_ids" {
  value = {
    for k, v in google_secret_manager_secret.secrets : k => v.id
  }
  description = "Map of secret names to IDs"
  sensitive   = true
}