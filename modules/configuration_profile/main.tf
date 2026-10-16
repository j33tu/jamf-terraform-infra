resource "jamfpro_computer_configuration_profile" "this" {
  name                = var.name
  description         = var.description
  category_id         = var.category_id
  level               = var.level
  distribution_method = var.distribution_method
  payloads            = var.payload_content
}
