output "bucket_name" {
  description = "Created storage bucket"
  value       = module.storage.name
}

output "bucket_url" {
  description = "Created storage bucket url"
  value       = module.storage.url
}

output "db_ip_address" {
  description = "IP address of the master database instance"
  value       = module.database.address
}

output "db_user_name" {
  description = "Name of the database user"
  value       = module.database.user_name
}

output "db_generated_user_password" {
  description = "The auto generated default user password if no input password was provided for database"
  value       = module.database.generated_user_password
}

output "db_root_cert" {
  description = "Database server certificate"
  value       = module.database.root_cert
}

output "db_client_cert" {
  description = "Database client certificate"
  value       = module.database.client_cert
}

output "db_client_key" {
  description = "Database client private key"
  value       = module.database.client_key
}
