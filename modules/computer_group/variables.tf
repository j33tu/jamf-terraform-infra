variable "name"     { type = string }
variable "is_smart" { type = bool, default = true }
variable "criteria" {
  type = list(object({
    name        = string
    priority    = number
    and_or      = string
    search_type = string
    value       = string
  }))
  default = []
}