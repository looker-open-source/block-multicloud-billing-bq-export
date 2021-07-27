view: cloud_provider {
  sql_table_name: `@{MULTICLOUD_BILLING_EXPORT_PROJECT}.@{MULTICLOUD_BILLING_EXPORT_DATASET}.cloud_provider`
    ;;

  dimension: cloud_provider {
    type: string
    sql: ${TABLE}.cloud_provider ;;
  }

  dimension: cloud_provider_key {
    hidden: yes
    type: string
    sql: ${TABLE}.cloud_provider_key ;;
  }

  measure: count {
    label: "Count of Cloud Proviers"
    type: count
    drill_fields: []
  }
}
