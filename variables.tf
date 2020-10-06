variable "auth_file" {
  description = "The GCP auth file"
  type        = string
  default     = "credential-file.json"
}

variable "project_id" {
  description = "The ID of the project in which to provision resources"
  type        = string
  default     = "mycoworks-ces-emrc-project"
}

variable "location" {
  description = "Location of the project"
  type        = string
  default     = "us-west2"
}

variable "zone" {
  description = "Zone of the project"
  type        = string
  default     = "c"
}
