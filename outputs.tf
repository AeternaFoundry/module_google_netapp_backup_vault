output "netapp_backup_vaults_id" {
  description = "Map of id values across all netapp_backup_vaults, keyed the same as var.netapp_backup_vaults except keys with no id are omitted"
  value       = { for k, v in google_netapp_backup_vault.netapp_backup_vaults : k => v.id if v.id != null && length(v.id) > 0 }
}
output "netapp_backup_vaults_backup_region" {
  description = "Map of backup_region values across all netapp_backup_vaults, keyed the same as var.netapp_backup_vaults except keys with no backup_region are omitted"
  value       = { for k, v in google_netapp_backup_vault.netapp_backup_vaults : k => v.backup_region if v.backup_region != null && length(v.backup_region) > 0 }
}
output "netapp_backup_vaults_backup_retention_policy" {
  description = "Map of backup_retention_policy values across all netapp_backup_vaults, keyed the same as var.netapp_backup_vaults except keys with no backup_retention_policy are omitted"
  value       = { for k, v in google_netapp_backup_vault.netapp_backup_vaults : k => one(v.backup_retention_policy) if v.backup_retention_policy != null && length(v.backup_retention_policy) > 0 }
}
output "netapp_backup_vaults_backup_vault_type" {
  description = "Map of backup_vault_type values across all netapp_backup_vaults, keyed the same as var.netapp_backup_vaults except keys with no backup_vault_type are omitted"
  value       = { for k, v in google_netapp_backup_vault.netapp_backup_vaults : k => v.backup_vault_type if v.backup_vault_type != null && length(v.backup_vault_type) > 0 }
}
output "netapp_backup_vaults_backups_crypto_key_version" {
  description = "Map of backups_crypto_key_version values across all netapp_backup_vaults, keyed the same as var.netapp_backup_vaults except keys with no backups_crypto_key_version are omitted"
  value       = { for k, v in google_netapp_backup_vault.netapp_backup_vaults : k => v.backups_crypto_key_version if v.backups_crypto_key_version != null && length(v.backups_crypto_key_version) > 0 }
}
output "netapp_backup_vaults_create_time" {
  description = "Map of create_time values across all netapp_backup_vaults, keyed the same as var.netapp_backup_vaults except keys with no create_time are omitted"
  value       = { for k, v in google_netapp_backup_vault.netapp_backup_vaults : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "netapp_backup_vaults_deletion_policy" {
  description = "Map of deletion_policy values across all netapp_backup_vaults, keyed the same as var.netapp_backup_vaults except keys with no deletion_policy are omitted"
  value       = { for k, v in google_netapp_backup_vault.netapp_backup_vaults : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "netapp_backup_vaults_description" {
  description = "Map of description values across all netapp_backup_vaults, keyed the same as var.netapp_backup_vaults except keys with no description are omitted"
  value       = { for k, v in google_netapp_backup_vault.netapp_backup_vaults : k => v.description if v.description != null && length(v.description) > 0 }
}
output "netapp_backup_vaults_destination_backup_vault" {
  description = "Map of destination_backup_vault values across all netapp_backup_vaults, keyed the same as var.netapp_backup_vaults except keys with no destination_backup_vault are omitted"
  value       = { for k, v in google_netapp_backup_vault.netapp_backup_vaults : k => v.destination_backup_vault if v.destination_backup_vault != null && length(v.destination_backup_vault) > 0 }
}
output "netapp_backup_vaults_effective_labels" {
  description = "Map of effective_labels values across all netapp_backup_vaults, keyed the same as var.netapp_backup_vaults except keys with no effective_labels are omitted"
  value       = { for k, v in google_netapp_backup_vault.netapp_backup_vaults : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "netapp_backup_vaults_encryption_state" {
  description = "Map of encryption_state values across all netapp_backup_vaults, keyed the same as var.netapp_backup_vaults except keys with no encryption_state are omitted"
  value       = { for k, v in google_netapp_backup_vault.netapp_backup_vaults : k => v.encryption_state if v.encryption_state != null && length(v.encryption_state) > 0 }
}
output "netapp_backup_vaults_kms_config" {
  description = "Map of kms_config values across all netapp_backup_vaults, keyed the same as var.netapp_backup_vaults except keys with no kms_config are omitted"
  value       = { for k, v in google_netapp_backup_vault.netapp_backup_vaults : k => v.kms_config if v.kms_config != null && length(v.kms_config) > 0 }
}
output "netapp_backup_vaults_labels" {
  description = "Map of labels values across all netapp_backup_vaults, keyed the same as var.netapp_backup_vaults except keys with no labels are omitted"
  value       = { for k, v in google_netapp_backup_vault.netapp_backup_vaults : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "netapp_backup_vaults_location" {
  description = "Map of location values across all netapp_backup_vaults, keyed the same as var.netapp_backup_vaults except keys with no location are omitted"
  value       = { for k, v in google_netapp_backup_vault.netapp_backup_vaults : k => v.location if v.location != null && length(v.location) > 0 }
}
output "netapp_backup_vaults_name" {
  description = "Map of name values across all netapp_backup_vaults, keyed the same as var.netapp_backup_vaults except keys with no name are omitted"
  value       = { for k, v in google_netapp_backup_vault.netapp_backup_vaults : k => v.name if v.name != null && length(v.name) > 0 }
}
output "netapp_backup_vaults_project" {
  description = "Map of project values across all netapp_backup_vaults, keyed the same as var.netapp_backup_vaults except keys with no project are omitted"
  value       = { for k, v in google_netapp_backup_vault.netapp_backup_vaults : k => v.project if v.project != null && length(v.project) > 0 }
}
output "netapp_backup_vaults_source_backup_vault" {
  description = "Map of source_backup_vault values across all netapp_backup_vaults, keyed the same as var.netapp_backup_vaults except keys with no source_backup_vault are omitted"
  value       = { for k, v in google_netapp_backup_vault.netapp_backup_vaults : k => v.source_backup_vault if v.source_backup_vault != null && length(v.source_backup_vault) > 0 }
}
output "netapp_backup_vaults_source_region" {
  description = "Map of source_region values across all netapp_backup_vaults, keyed the same as var.netapp_backup_vaults except keys with no source_region are omitted"
  value       = { for k, v in google_netapp_backup_vault.netapp_backup_vaults : k => v.source_region if v.source_region != null && length(v.source_region) > 0 }
}
output "netapp_backup_vaults_state" {
  description = "Map of state values across all netapp_backup_vaults, keyed the same as var.netapp_backup_vaults except keys with no state are omitted"
  value       = { for k, v in google_netapp_backup_vault.netapp_backup_vaults : k => v.state if v.state != null && length(v.state) > 0 }
}
output "netapp_backup_vaults_terraform_labels" {
  description = "Map of terraform_labels values across all netapp_backup_vaults, keyed the same as var.netapp_backup_vaults except keys with no terraform_labels are omitted"
  value       = { for k, v in google_netapp_backup_vault.netapp_backup_vaults : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}

