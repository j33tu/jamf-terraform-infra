resource "jamfpro_computer_extension_attribute" "this" {
  name              = var.name
  description       = var.description
  data_type         = var.data_type  # "String", "Integer", "Date"
  input_type        = var.input_type # "script", "Text Field", "Pop-up Menu"
  script_content    = var.script_content
  inventory_display = var.inventory_display
}
