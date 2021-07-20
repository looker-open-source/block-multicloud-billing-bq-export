include: "unified_cloud_billing.view.lkml"

view: +unified_cloud_billing {
  ###################### Period over Period Reporting Metrics ######################

  parameter: period {
    label: "Timeframe"
    view_label: "Period over Period"
    type: unquoted
    allowed_value: {
      label: "Week to Date"
      value: "Week"
    }
    allowed_value: {
      label: "Month to Date"
      value: "Month"
    }
    allowed_value: {
      label: "Quarter to Date"
      value: "Quarter"
    }
    allowed_value: {
      label: "Year to Date"
      value: "Year"
    }
    default_value: "Period"
  }

  # To get start date we need to get either first day of the year, month or quarter
  dimension: first_date_in_period {
    view_label: "Period over Period"
    type: date
    datatype: date
    hidden: no
    sql: DATE_TRUNC(CURRENT_DATE(), {% parameter period %});;
    convert_tz: no
  }

  #Now get the total number of days in the period
  dimension: days_in_period {
    view_label: "Period over Period"
    type: number
    hidden: no
    sql: DATE_DIFF(CURRENT_DATE(),${first_date_in_period}, DAY) ;;
    # convert_tz: no
  }

  #Now get the first date in the prior period
  dimension: first_date_in_prior_period {
    view_label: "Period over Period"
    type: date
    datatype: date
    hidden: no
    sql: DATE_TRUNC(DATE_ADD(CURRENT_DATE(), INTERVAL -1 {% parameter period %}),{% parameter period %});;
    convert_tz: no
  }

  #Now get the last date in the prior period
  dimension: last_date_in_prior_period {
    view_label: "Period over Period"
    type: date
    datatype: date
    hidden: no
    sql: DATE_ADD(${first_date_in_prior_period}, INTERVAL ${days_in_period} DAY) ;;
    convert_tz: no
  }

  # Now figure out which period each date belongs in
  dimension: period_selected {
    view_label: "Period over Period"
    type: string
    sql:
        CASE
          WHEN ${unified_cloud_billing.usage_start_date} >=  ${first_date_in_period}
          THEN 'This {% parameter period %} to Date'
          WHEN ${unified_cloud_billing.usage_start_date} >= ${first_date_in_prior_period}
          AND ${unified_cloud_billing.usage_start_date} <= ${last_date_in_prior_period}
          THEN 'Prior {% parameter period %} to Date'
          ELSE NULL
          END ;;
  }


  dimension: days_from_period_start {
    view_label: "Period over Period"
    type: number
    sql: CASE WHEN ${period_selected} = 'This {% parameter period %} to Date'
          THEN DATE_DIFF(${unified_cloud_billing.usage_start_date}, ${first_date_in_period}, DAY)
          WHEN ${period_selected} = 'Prior {% parameter period %} to Date'
          THEN DATE_DIFF(${unified_cloud_billing.usage_start_date}, ${first_date_in_prior_period}, DAY)
          ELSE NULL END;;
  }

  measure: total_cost_this_period {
    view_label: "Period over Period"
    type: sum
    sql: ${unified_cloud_billing.cost} ;;
    filters: [period_selected: "This {% parameter period %} to Date"]
    value_format_name: usd_0
  }

  measure: total_cost_prior_period {
    view_label: "Period over Period"
    type: sum
    sql: ${unified_cloud_billing.cost} ;;
    filters: [period_selected: "Prior {% parameter period %} to Date"]
    value_format_name: usd_0
  }

  measure: cost_percent_change {
    view_label: "Period over Period"
    type: number
    sql: 1.0*(${total_cost_this_period}-${total_cost_prior_period})/NULLIF(${total_cost_prior_period},0) ;;
    value_format_name: percent_1
  }

  measure: total_usage_this_period {
    view_label: "Period over Period"
    type: sum
    sql: ${unified_cloud_billing.usage_quantity} ;;
    filters: [period_selected: "This {% parameter period %} to Date"]
    value_format_name: decimal_2
  }

  measure: total_usage_prior_period {
    view_label: "Period over Period"
    type: sum
    sql: ${unified_cloud_billing.usage_quantity} ;;
    filters: [period_selected: "Prior {% parameter period %} to Date"]
    value_format_name: decimal_2
  }

  measure: usage_percent_change {
    view_label: "Period over Period"
    type: number
    sql: 1.0*(${total_usage_this_period}-${total_usage_prior_period})/NULLIF(${total_usage_prior_period},0) ;;
    value_format_name: percent_1
  }


}
