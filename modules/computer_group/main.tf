resource "jamfpro_computer_group" "this" {
  name     = var.name
  is_smart = var.is_smart

  dynamic "criterion" {
    for_each = var.criteria
    content {
      name        = criterion.value.name
      priority    = criterion.value.priority
      and_or      = criterion.value.and_or
      search_type = criterion.value.search_type
      value       = criterion.value.value
    }
  }
}
