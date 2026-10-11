data "oci_generative_ai_generative_ai_private_endpoints" "generative_ai_generative_ai_private_endpoints_lookup" {
  for_each = var.generative_ai_generative_ai_private_endpoints_lookup

  compartment_id = each.value.compartment_id
  display_name   = each.value.display_name
  resource_type  = each.value.resource_type
  state          = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

