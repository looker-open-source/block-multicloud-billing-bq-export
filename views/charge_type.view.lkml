view: charge_type {
  sql_table_name: `@{MULTICLOUD_BILLING_EXPORT_PROJECT}.@{MULTICLOUD_BILLING_EXPORT_DATASET}.charge_type` ;;

  dimension: charge_type {
    type: string
    sql: ${TABLE}.charge_type ;;
  }

  dimension: charge_type_key {
    hidden: yes
    type: string
    sql: ${TABLE}.charge_type_key ;;
  }
}
