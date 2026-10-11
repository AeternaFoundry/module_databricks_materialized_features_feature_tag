variable "materialized_features_feature_tags" {
  description = <<EOT
Map of materialized_features_feature_tags, attributes below
Required:
    - key
Optional:
    - provider_config
    - value
EOT

  type = map(object({
    key = string
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
    value = optional(string)
  }))
}

