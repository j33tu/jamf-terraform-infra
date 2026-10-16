resource "jamfpro_script" "this" {
  name            = var.name
  category_id     = var.category_id
  info            = var.info
  notes           = var.notes
  script_contents = var.script_contents
}
