project_name: "multicloud_billing_bq_export"

constant: MULTICLOUD_BILLING_EXPORT_CONNECTION_NAME {
  export: override_required
  value: "your_bq_connection"
}

constant: MULTICLOUD_BILLING_EXPORT_PROJECT {
  export: override_required
  value: "your_bq_project"
}

constant: MULTICLOUD_BILLING_EXPORT_DATASET {
  export: override_required
  value: "your_bq_dataset"
}
