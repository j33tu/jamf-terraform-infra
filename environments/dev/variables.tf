variable "jamfpro_instance_fqdn" {
  type        = string
  description = "Jamf Pro Instance URL"
}

variable "client_id" {
  type        = string
  description = "API Client ID"
  sensitive   = true
}

variable "client_secret" {
  type        = string
  description = "API Client Secret"
  sensitive   = true
}

variable "check_in_frequency" {
  type        = number
  default     = 15
  description = "Computer check-in frequency in minutes"
}

variable "categories" {
  type        = map(number)
  description = "Map of category names to priorities"
  default     = {}
}

variable "computer_profiles" {
  type = map(object({
    description         = string
    category_name       = string
    payload_filename    = string
    distribution_method = string
  }))
  description = "Map of macOS configuration profiles"
  default     = {}
}

variable "scripts" {
  type = map(object({
    category_name   = string
    script_filename = string
    info            = string
    notes           = string
  }))
  description = "Map of Jamf Pro shell scripts"
  default     = {}
}
