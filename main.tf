data "oci_database_migration_migration_object_types" "database_migration_migration_object_types_lookup" {
  for_each = var.database_migration_migration_object_types_lookup

  connection_type = each.value.connection_type

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

