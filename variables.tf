variable "netapp_backup_vaults" {
  description = <<EOT
Map of netapp_backup_vaults, attributes below
Required:
    - location
    - name
Optional:
    - backup_region
    - backup_vault_type
    - deletion_policy
    - description
    - kms_config
    - labels
    - project
    - backup_retention_policy (block):
        - backup_minimum_enforced_retention_days (required)
        - daily_backup_immutable (optional)
        - manual_backup_immutable (optional)
        - monthly_backup_immutable (optional)
        - weekly_backup_immutable (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    location          = string
    name              = string
    backup_region     = optional(string)
    backup_vault_type = optional(string)
    deletion_policy   = optional(string)
    description       = optional(string)
    kms_config        = optional(string)
    labels            = optional(map(string))
    project           = optional(string)
    backup_retention_policy = optional(object({
      backup_minimum_enforced_retention_days = number
      daily_backup_immutable                 = optional(bool)
      manual_backup_immutable                = optional(bool)
      monthly_backup_immutable               = optional(bool)
      weekly_backup_immutable                = optional(bool)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

