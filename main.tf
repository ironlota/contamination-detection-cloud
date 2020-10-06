provider "google" {
  credentials = file(var.auth_file)
  project     = var.project_id
  region      = var.location
  zone        = var.zone
  version     = "~> 3.38"
}

provider "google-beta" {
  credentials = file(var.auth_file)
  project     = var.project_id
  region      = var.location
  zone        = var.zone
  version = "~> 3.38"
}

module "storage" {
  source = "./modules/storage"

  name     = "mycelium-images"
  location = var.location
}

module "database" {
  source = "./modules/database"

  name     = "mycelium-image-db"
  location = var.location
}
