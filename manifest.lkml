project_name: "gcp_multicloud_billing"

constant: MULTICLOUD_BILLING_EXPORT_CONNECTION_NAME {
  export: override_required
  value: "mw-alpha-cloud-usage"
}

constant: MULTICLOUD_BILLING_EXPORT_DATASET {
  export: override_required
  value: "cloud_cost_final"
}
