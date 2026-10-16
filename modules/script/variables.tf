variable "name"            { type = string }
variable "category_id"     { type = string }
variable "info"            { type = string, default = "" }
variable "notes"           { type = string, default = "Managed via Terraform" }
variable "script_contents" { type = string }