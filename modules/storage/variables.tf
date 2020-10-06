variable "location" {
  description = "Location of the project"
  type        = string
}

variable "name" {
  description = "Name of the buckets to create"
  type        = string
}

variable "force_destroy" {
  description = "Force destroy bucket"
  type        = string
  default     = false
}
