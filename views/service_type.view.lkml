view: service_type {
  sql_table_name: `@{MULTICLOUD_BILLING_EXPORT_DATASET}.service_type`
    ;;

  dimension: service_category {
    type: string
    sql: CASE WHEN ${TABLE}.service_category = '???-Unknown' THEN 'Other' ELSE  ${TABLE}.service_category END ;;
    drill_fields: [service_type]
  }

  dimension: service_type {
    type: string
    sql: CASE WHEN ${TABLE}.service_type = '???-Unknown' THEN 'Other' ELSE  ${TABLE}.service_type END ;;
  }

  dimension: service_type_key {
    hidden: yes
    type: string
    sql: ${TABLE}.service_type_key ;;
  }

  measure: count {
    label: "Count of Service Types Consumed"
    type: count
    drill_fields: []
  }
}
