output "name" {
  description = "Created storage bucket"
  value       = google_storage_bucket.base
}

output "url" {
  description = "Created storage bucket url"
  value       = google_storage_bucket.base.url
}
