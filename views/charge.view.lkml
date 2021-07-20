view: charge {
  sql_table_name: `@{MULTICLOUD_BILLING_EXPORT_DATASET}.charge` ;;
  drill_fields: [charge_id]

  dimension: charge_id {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.charge_id ;;
  }

  dimension: charge_description {
    type: string
    sql: ${TABLE}.charge_description ;;
  }

  dimension: charge_key {
    hidden: yes
    type: string
    sql: ${TABLE}.charge_key ;;
  }

}
