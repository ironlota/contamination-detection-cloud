variable "name" {
  description = "Name of the database"
  type        = string
  default     = "mycoworks-images-database"
}

variable "tier" {
  description = "Type of database"
  type        = string
  default     = "db-f1-micro"
}

variable "location" {
  description = "Location of the database"
  type        = string
  default     = "us-west2"
}

variable "zone" {
  description = "Zone of the project"
  type        = string
  default     = "c"
}

variable access_cidr {
  description = "The IPv4 CIDR to provide access the database instance"
  default     = "0.0.0.0/0"
}

variable user_name {
  description = "The name of the default user"
  default     = "dev"
}

variable user_host {
  description = "The host for the default user"
  default     = "%"
}

variable user_password {
  description = "The password for the default user. If not set, a random one will be generated and available in the generated_user_password output variable."
  default     = ""
}
