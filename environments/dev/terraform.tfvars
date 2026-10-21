check_in_frequency = 15

categories = {
  "Dev Security Agents" = 1
  "Dev Utilities"       = 5
}

computer_profiles = {
  "Disable Siri - Dev Testing" = {
    description         = "Disables Siri assistant on development endpoints"
    category_name       = "Dev Security Agents"
    payload_filename    = "disable_siri.mobileconfig"
    distribution_method = "install_automatically"
  }
}

scripts = {
  "Flush DNS Cache" = {
    category_name   = "Dev Utilities"
    script_filename = "flush_dns.sh"
    info            = "Flushes local DNS cache on macOS"
    notes           = "Tested on macOS Sequoia"
  }
}
jamfpro_instance_fqdn = "https://your-dev-server.jamfcloud.com"
client_id             = "your-api-client-id"
client_secret         = "your-api-client-secret"
