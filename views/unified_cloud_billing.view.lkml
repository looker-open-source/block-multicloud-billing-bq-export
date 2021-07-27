view: unified_cloud_billing {
  sql_table_name:  `@{MULTICLOUD_BILLING_EXPORT_PROJECT}.@{MULTICLOUD_BILLING_EXPORT_DATASET}.unified_cloud_billing_date_impute`
    ;;

  dimension: billing_account_key {
    hidden: yes
    type: string
    sql: ${TABLE}.billing_account_key ;;
  }

  dimension_group: billing_end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.billing_end_date ;;
  }

  dimension_group: billing_start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.billing_start_date ;;
  }

  dimension: charge_key {
    hidden: yes
    type: string
    sql: ${TABLE}.charge_key ;;
  }

  dimension: charge_type_key {
    hidden: yes
    type: string
    sql: ${TABLE}.charge_type_key ;;
  }

  dimension: cloud_provider_key {
    hidden: yes
    type: string
    sql: ${TABLE}.cloud_provider_key ;;
  }

  dimension: cost {
    hidden: yes
    type: number
    sql: ${TABLE}.cost ;;
    value_format_name: usd
  }

  measure: total_cost {
    type: sum
    sql: ${cost} ;;
    value_format_name: usd
  }

  measure: total_GCP_cost {
    group_label: "GCP"
    label: "Total GCP Cost"
    type: sum
    sql: ${cost} ;;
    filters: [cloud_provider.cloud_provider: "GCP"]
    value_format_name: usd
  }

  measure: percent_of_spend_gcp {
    group_label: "GCP"
    label: "GCP Percent of Spend"
    sql: 1.0*${total_GCP_cost}/NULLIF(${total_cost},0) ;;
    value_format_name: percent_1
  }

  measure: total_AWS_cost {
    group_label: "AWS"
    label: "Total AWS Cost"
    type: sum
    sql: ${cost} ;;
    filters: [cloud_provider.cloud_provider: "AWS"]
    value_format_name: usd
  }

  measure: percent_of_spend_aws {
    group_label: "AWS"
    label: "AWS Percent of Spend"
    sql: 1.0*${total_AWS_cost}/NULLIF(${total_cost},0) ;;
    value_format_name: percent_1
  }

  measure: total_azure_cost {
    group_label: "Azure"
    label: "Total Azure Cost"
    type: sum
    sql: ${cost} ;;
    filters: [cloud_provider.cloud_provider: "Azure"]
    value_format_name: usd
  }

  measure: percent_of_spend_azure {
    group_label: "Azure"
    label: "Azure Percent of Spend"
    sql: 1.0*${total_azure_cost}/NULLIF(${total_cost},0) ;;
    value_format_name: percent_1
  }

  dimension: currency_key {
    hidden: yes
    type: string
    sql: ${TABLE}.currency_key ;;
  }

  dimension: product_name_key {
    hidden: yes
    type: string
    sql: ${TABLE}.product_name_key ;;
  }

  dimension: project_key {
    hidden: yes
    type: string
    sql: ${TABLE}.project_key ;;
  }

  dimension: resource_location_key {
    hidden: yes
    type: string
    sql: ${TABLE}.resource_location_key ;;
  }

  dimension: row_key {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.row_key ;;
  }

  dimension: service_key {
    hidden: yes
    type: string
    sql: ${TABLE}.service_key ;;
  }

  dimension: service_type_key {
    hidden: yes
    type: string
    sql: ${TABLE}.service_type_key ;;
  }

  dimension_group: usage_end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.usage_end_date ;;
  }

  dimension: usage_quantity {
    hidden: yes
    type: number
    sql: ${TABLE}.usage_quantity ;;
  }

  measure: total_usage_quantity {
    type: sum
    sql: ${usage_quantity} ;;
    value_format_name: decimal_2
  }

  dimension_group: usage_start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.usage_start_date ;;
    drill_fields: [service_type.service_type]
  }

  dimension: usage_unit_of_measure_key {
    hidden: yes
    type: string
    sql: ${TABLE}.usage_unit_of_measure_key ;;
  }

}
