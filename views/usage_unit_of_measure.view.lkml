view: usage_unit_of_measure {
  sql_table_name: `@{MULTICLOUD_BILLING_EXPORT_PROJECT}.@{MULTICLOUD_BILLING_EXPORT_DATASET}.usage_unit_of_measure`
    ;;

  dimension: usage_unit_of_measure {
    type: string
    sql: ${TABLE}.usage_unit_of_measure ;;
  }

  dimension: usage_unit_of_measure_key {
    hidden: yes
    type: string
    sql: ${TABLE}.usage_unit_of_measure_key ;;
  }

}
