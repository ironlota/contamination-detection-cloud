resource "google_storage_bucket" "base" {
  name          = var.name
  location      = var.location
  force_destroy = var.force_destroy

  uniform_bucket_level_access = true

  cors {
    origin          = ["*"]
    method          = ["GET"]
    response_header = ["*"]
    max_age_seconds = 3600
  }
}
