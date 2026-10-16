resource "jamfpro_computer_check_in" "this" {
  check_in_frequency                       = var.check_in_frequency
  create_log_entry_for_check_in            = var.create_log_entry
  apply_computer_level_managed_preferences = true
}
