output "masking_policies_id" {
  description = "Map of id values across all masking_policies, keyed the same as var.masking_policies except keys with no id are omitted"
  value       = { for k, v in snowflake_masking_policy.masking_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "masking_policies_argument" {
  description = "Map of argument values across all masking_policies, keyed the same as var.masking_policies except keys with no argument are omitted"
  value       = { for k, v in snowflake_masking_policy.masking_policies : k => v.argument if v.argument != null && length(v.argument) > 0 }
}
output "masking_policies_body" {
  description = "Map of body values across all masking_policies, keyed the same as var.masking_policies except keys with no body are omitted"
  value       = { for k, v in snowflake_masking_policy.masking_policies : k => v.body if v.body != null && length(v.body) > 0 }
}
output "masking_policies_comment" {
  description = "Map of comment values across all masking_policies, keyed the same as var.masking_policies except keys with no comment are omitted"
  value       = { for k, v in snowflake_masking_policy.masking_policies : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "masking_policies_database" {
  description = "Map of database values across all masking_policies, keyed the same as var.masking_policies except keys with no database are omitted"
  value       = { for k, v in snowflake_masking_policy.masking_policies : k => v.database if v.database != null && length(v.database) > 0 }
}
output "masking_policies_describe_output" {
  description = "Map of describe_output values across all masking_policies, keyed the same as var.masking_policies except keys with no describe_output are omitted"
  value       = { for k, v in snowflake_masking_policy.masking_policies : k => v.describe_output if v.describe_output != null && length(v.describe_output) > 0 }
}
output "masking_policies_exempt_other_policies" {
  description = "Map of exempt_other_policies values across all masking_policies, keyed the same as var.masking_policies except keys with no exempt_other_policies are omitted"
  value       = { for k, v in snowflake_masking_policy.masking_policies : k => v.exempt_other_policies if v.exempt_other_policies != null && length(v.exempt_other_policies) > 0 }
}
output "masking_policies_fully_qualified_name" {
  description = "Map of fully_qualified_name values across all masking_policies, keyed the same as var.masking_policies except keys with no fully_qualified_name are omitted"
  value       = { for k, v in snowflake_masking_policy.masking_policies : k => v.fully_qualified_name if v.fully_qualified_name != null && length(v.fully_qualified_name) > 0 }
}
output "masking_policies_name" {
  description = "Map of name values across all masking_policies, keyed the same as var.masking_policies except keys with no name are omitted"
  value       = { for k, v in snowflake_masking_policy.masking_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "masking_policies_return_data_type" {
  description = "Map of return_data_type values across all masking_policies, keyed the same as var.masking_policies except keys with no return_data_type are omitted"
  value       = { for k, v in snowflake_masking_policy.masking_policies : k => v.return_data_type if v.return_data_type != null && length(v.return_data_type) > 0 }
}
output "masking_policies_schema" {
  description = "Map of schema values across all masking_policies, keyed the same as var.masking_policies except keys with no schema are omitted"
  value       = { for k, v in snowflake_masking_policy.masking_policies : k => v.schema if v.schema != null && length(v.schema) > 0 }
}
output "masking_policies_show_output" {
  description = "Map of show_output values across all masking_policies, keyed the same as var.masking_policies except keys with no show_output are omitted"
  value       = { for k, v in snowflake_masking_policy.masking_policies : k => v.show_output if v.show_output != null && length(v.show_output) > 0 }
}

