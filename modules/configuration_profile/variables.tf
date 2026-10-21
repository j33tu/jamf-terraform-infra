variable "name" {
  type        = string
  description = "Name of the configuration profile"
}

variable "description" {
  type        = string
  description = "Description of the profile"
  default     = ""
}

variable "category_id" {
  type        = string
  description = "Category ID assignment"
}

variable "distribution_method" {
  type        = string
  description = "Method of distribution (e.g., install_automatically)"
  default     = "install_automatically"
}

variable "payload_content" {
  type        = string
  description = "Raw XML string content of the .mobileconfig file"
}
