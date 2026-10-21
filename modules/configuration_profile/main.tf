terraform {
  required_providers {
    jamfplatform = {
      source = "Jamf-Concepts/jamfplatform"
    }
  }
}

resource "jamfplatform_pro_category" "this" {
  name     = var.name
  priority = var.priority
}
resource "jamfpro_macos_configuration_profile_plist" "this" {
  name                = var.name
  description         = var.description
  category_id         = var.category_id
  distribution_method = var.distribution_method
  payload_content     = var.payload_content
}
