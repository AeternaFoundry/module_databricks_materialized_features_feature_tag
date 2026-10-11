output "materialized_features_feature_tags_key" {
  description = "Map of key values across all materialized_features_feature_tags, keyed the same as var.materialized_features_feature_tags except keys with no key are omitted"
  value       = { for k, v in databricks_materialized_features_feature_tag.materialized_features_feature_tags : k => v.key if v.key != null && length(v.key) > 0 }
}
output "materialized_features_feature_tags_provider_config" {
  description = "Map of provider_config values across all materialized_features_feature_tags, keyed the same as var.materialized_features_feature_tags except keys with no provider_config are omitted"
  value       = { for k, v in databricks_materialized_features_feature_tag.materialized_features_feature_tags : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}
output "materialized_features_feature_tags_value" {
  description = "Map of value values across all materialized_features_feature_tags, keyed the same as var.materialized_features_feature_tags except keys with no value are omitted"
  value       = { for k, v in databricks_materialized_features_feature_tag.materialized_features_feature_tags : k => v.value if v.value != null && length(v.value) > 0 }
}

