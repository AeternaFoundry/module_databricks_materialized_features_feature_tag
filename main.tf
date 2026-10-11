resource "databricks_materialized_features_feature_tag" "materialized_features_feature_tags" {
  for_each = var.materialized_features_feature_tags

  key             = each.value.key
  provider_config = each.value.provider_config
  value           = each.value.value
}

