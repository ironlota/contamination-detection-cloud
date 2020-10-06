output "address" {
  description = "IP address of the master database instance"
  value = google_sql_database_instance.base.first_ip_address
  // value = google_sql_database_instance.base.ip_address.0.ip_address
}

output "name" {
  description = "Name of the database instance"
  value       = google_sql_database_instance.base.name
}

output "user_name" {
  description = "Name of the database user"
  value       = var.user_name
}

output "generated_user_password" {
  description = "The auto generated default user password if no input password was provided"
  value       = random_id.user_password.hex
}

output "root_cert" {
  description = "Server certificate"
  value       = google_sql_ssl_cert.client_cert.server_ca_cert
}

output "client_cert" {
  description = "Client certificate"
  value       = google_sql_ssl_cert.client_cert.cert
}

output "client_key" {
  description = "Client private key"
  value       = google_sql_ssl_cert.client_cert.private_key
}
