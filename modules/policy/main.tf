resource "jamfpro_policy" "this" {
  name               = var.name
  enabled            = var.enabled
  category_id        = var.category_id
  frequency          = var.frequency
  trigger_checkin    = var.trigger_checkin
  trigger_enrollment = var.trigger_enrollment
  trigger_recurring  = var.trigger_recurring
}
