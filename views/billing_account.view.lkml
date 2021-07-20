view: billing_account {
  sql_table_name: `@{MULTICLOUD_BILLING_EXPORT_DATASET}.billing_account` ;;
  drill_fields: [billing_account_id]

  dimension: billing_account_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.billing_account_id ;;
  }

  dimension: billing_account_key {
    hidden: yes
    type: string
    sql: ${TABLE}.billing_account_key ;;
  }

  measure: count {
    label: "Count of Billing Accounts"
    type: count
    drill_fields: [billing_account_id]
  }
}
