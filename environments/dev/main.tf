terraform {
  required_version = ">= 1.6.0"
  required_providers {
    jamfplatform = {
      source  = "Jamf-Concepts/jamfplatform"
      version = "~> 0.31.2"
    }
  }
}

provider "jamfplatform" {
  base_url      = var.jamfpro_instance_fqdn
  client_id     = var.client_id
  client_secret = var.client_secret
}
# 1. Global Settings
module "settings" {
  source             = "../../modules/settings"
  check_in_frequency = var.check_in_frequency
}

# 2. Categories
module "categories" {
  for_each = var.categories
  source   = "../../modules/category"

  name     = each.key
  priority = each.value
}

# 3. Configuration Profiles
module "configuration_profiles" {
  for_each = var.computer_profiles
  source   = "../../modules/configuration_profile"

  name                = each.key
  description         = each.value.description
  category_id         = module.categories[each.value.category_name].id
  distribution_method = each.value.distribution_method
  payload_content     = file("${path.module}/payloads/${each.value.payload_filename}")
}

# 4. Scripts
module "scripts" {
  for_each = var.scripts
  source   = "../../modules/script"

  name           = each.key
  category_id    = module.categories[each.value.category_name].id
  script_content = file("${path.module}/scripts/${each.value.script_filename}")
  info           = each.value.info
  notes          = each.value.notes
}
