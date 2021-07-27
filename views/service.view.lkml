view: service {
  sql_table_name: `@{MULTICLOUD_BILLING_EXPORT_PROJECT}.@{MULTICLOUD_BILLING_EXPORT_DATASET}.service`
    ;;
  drill_fields: [service_id]

  dimension: service_id {
    hidden: yes
    primary_key: yes
    type: string
    sql: CASE WHEN LENGTH(${TABLE}.service_id) = 0 THEN 'SNS Project' ELSE ${TABLE}.service_id END ;;
  }

  dimension: resource_project {
    view_label: "Resource & Projects"
    label: "Resource/Project"
    type: string
    sql: CASE WHEN COALESCE(${project.project_name},${service_id}) = '<missing>'
              THEN 'SNS Project'
              ELSE COALESCE(${project.project_name},${service_id}) END ;;
  }

  dimension: service_key {
    hidden: yes
    type: string
    sql: ${TABLE}.service_key ;;
  }

  measure: count {
    label: "Count of Services Consumed"
    type: count
    drill_fields: [service_id]
  }
}
