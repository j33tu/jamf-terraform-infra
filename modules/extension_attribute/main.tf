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
