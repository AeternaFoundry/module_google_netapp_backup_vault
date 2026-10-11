resource "google_netapp_backup_vault" "netapp_backup_vaults" {
  for_each = var.netapp_backup_vaults

  location          = each.value.location
  name              = each.value.name
  backup_region     = each.value.backup_region
  backup_vault_type = each.value.backup_vault_type
  deletion_policy   = each.value.deletion_policy
  description       = each.value.description
  kms_config        = each.value.kms_config
  labels            = each.value.labels
  project           = each.value.project

  dynamic "backup_retention_policy" {
    for_each = each.value.backup_retention_policy != null ? [each.value.backup_retention_policy] : []
    content {
      backup_minimum_enforced_retention_days = backup_retention_policy.value.backup_minimum_enforced_retention_days
      daily_backup_immutable                 = backup_retention_policy.value.daily_backup_immutable
      manual_backup_immutable                = backup_retention_policy.value.manual_backup_immutable
      monthly_backup_immutable               = backup_retention_policy.value.monthly_backup_immutable
      weekly_backup_immutable                = backup_retention_policy.value.weekly_backup_immutable
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

