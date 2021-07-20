view: resource_location {
  sql_table_name: `@{MULTICLOUD_BILLING_EXPORT_DATASET}.resource_location`
    ;;

  dimension: resource_location {
    type: string
    sql: ${TABLE}.resource_location ;;
  }

  dimension: resource_location_key {
    hidden: yes
    type: string
    sql: ${TABLE}.resource_location_key ;;
  }

  dimension: resource_region {
    type: string
    sql: ${TABLE}.resource_region ;;
  }
}
