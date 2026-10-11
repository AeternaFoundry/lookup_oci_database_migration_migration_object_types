output "database_migration_migration_object_types_lookup_id" {
  description = "Map of id values across all database_migration_migration_object_types_lookup, keyed the same as var.database_migration_migration_object_types_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_database_migration_migration_object_types.database_migration_migration_object_types_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_migration_migration_object_types_lookup_connection_type" {
  description = "Map of connection_type values across all database_migration_migration_object_types_lookup, keyed the same as var.database_migration_migration_object_types_lookup except keys with no connection_type are omitted"
  value       = { for k, v in data.oci_database_migration_migration_object_types.database_migration_migration_object_types_lookup : k => v.connection_type if v.connection_type != null && length(v.connection_type) > 0 }
}
output "database_migration_migration_object_types_lookup_filter" {
  description = "Map of filter values across all database_migration_migration_object_types_lookup, keyed the same as var.database_migration_migration_object_types_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_database_migration_migration_object_types.database_migration_migration_object_types_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "database_migration_migration_object_types_lookup_migration_object_type_summary_collection" {
  description = "Map of migration_object_type_summary_collection values across all database_migration_migration_object_types_lookup, keyed the same as var.database_migration_migration_object_types_lookup except keys with no migration_object_type_summary_collection are omitted"
  value       = { for k, v in data.oci_database_migration_migration_object_types.database_migration_migration_object_types_lookup : k => v.migration_object_type_summary_collection if v.migration_object_type_summary_collection != null && length(v.migration_object_type_summary_collection) > 0 }
}

