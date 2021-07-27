view: product_name {
  sql_table_name: `@{MULTICLOUD_BILLING_EXPORT_PROJECT}.@{MULTICLOUD_BILLING_EXPORT_DATASET}.product_name`
    ;;

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: product_name_key {
    hidden: yes
    type: string
    sql: ${TABLE}.product_name_key ;;
  }

  measure: count {
    label: "Number of Products Consumed"
    type: count
    drill_fields: [product_name]
  }
}
