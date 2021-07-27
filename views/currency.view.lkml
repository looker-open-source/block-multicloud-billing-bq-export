view: currency {
  sql_table_name: `@{MULTICLOUD_BILLING_EXPORT_PROJECT}.@{MULTICLOUD_BILLING_EXPORT_DATASET}.currency`
    ;;

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: currency_key {
    hidden: yes
    type: string
    sql: ${TABLE}.currency_key ;;
  }

}
