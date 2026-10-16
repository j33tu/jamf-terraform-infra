variable "name"               { type = string }
variable "enabled"            { type = bool, default = true }
variable "category_id"        { type = string }
variable "frequency"          { type = string, default = "Once per computer" }
variable "trigger_checkin"    { type = bool, default = false }
variable "trigger_enrollment" { type = bool, default = false }
variable "trigger_recurring"  { type = bool, default = true }