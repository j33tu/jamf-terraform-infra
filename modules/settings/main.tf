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
resource "jamfpro_client_check_in" "this" {
  check_in_frequency = var.check_in_frequency
}
