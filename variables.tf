variable "database_migration_migration_object_types_lookup" {
  description = <<EOT
Map of database_migration_migration_object_types_lookup, attributes below
Required:
    - connection_type
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    connection_type = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

