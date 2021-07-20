view: project {
  sql_table_name: `@{MULTICLOUD_BILLING_EXPORT_DATASET}.project`
    ;;
  drill_fields: [project_id]

  dimension: project_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.project_id ;;
  }

  dimension: project_key {
    hidden: yes
    type: string
    sql: ${TABLE}.project_key ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}.project_name ;;
  }

  measure: count {
    label: "Count of Projects"
    type: count
    drill_fields: [project_id, project_name]
  }
}
