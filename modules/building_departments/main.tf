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
resource "jamfpro_building" "this" {
  name            = var.name
  street_address  = var.street_address
  city            = var.city
  state_province  = var.state_province
  zip_postal_code = var.zip_postal_code
  country         = var.country
}
