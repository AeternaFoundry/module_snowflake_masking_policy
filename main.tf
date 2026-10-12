resource "snowflake_masking_policy" "masking_policies" {
  for_each = var.masking_policies

  body                  = each.value.body
  database              = each.value.database
  name                  = each.value.name
  return_data_type      = each.value.return_data_type
  schema                = each.value.schema
  comment               = each.value.comment
  exempt_other_policies = each.value.exempt_other_policies

  dynamic "argument" {
    for_each = each.value.argument
    content {
      name = argument.value.name
      type = argument.value.type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

