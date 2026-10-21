provider "jamfplatform" {
  base_url      = var.jamfpro_instance_fqdn
  client_id     = var.client_id
  client_secret = var.client_secret
}
