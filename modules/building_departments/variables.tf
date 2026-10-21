variable "name" {
  type        = string
  description = "Name of the building"
}

variable "street_address" {
  type        = string
  description = "Street address of the building"
  default     = ""
}

variable "city" {
  type        = string
  description = "City where the building is located"
  default     = ""
}

variable "state_province" {
  type        = string
  description = "State or province of the building"
  default     = ""
}

variable "zip_postal_code" {
  type        = string
  description = "ZIP or postal code"
  default     = ""
}

variable "country" {
  type        = string
  description = "Country of the building"
  default     = ""
}
