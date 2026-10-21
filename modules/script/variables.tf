variable "name" {
  type        = string
  description = "Name of the script"
}

variable "category_id" {
  type        = string
  description = "Category ID where the script belongs"
}

variable "script_content" {
  type        = string
  description = "Raw string contents of the shell script"
}

variable "info" {
  type        = string
  description = "Informational details about the script"
  default     = ""
}

variable "notes" {
  type        = string
  description = "Additional administrative notes"
  default     = ""
}
