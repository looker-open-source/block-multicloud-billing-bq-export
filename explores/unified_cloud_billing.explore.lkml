include: "/views/*.view"

explore: unified_cloud_billing {
  label: "Cloud Cost Management"
  view_label: "Cloud Transacitons"
  join: billing_account {
    relationship: many_to_one
    type: left_outer
    sql_on: ${unified_cloud_billing.billing_account_key} = ${billing_account.billing_account_key} ;;
  }
  join: charge {
    view_label: "Charge Details"
    relationship: many_to_one
    type: left_outer
    sql_on: ${unified_cloud_billing.charge_key} = ${charge.charge_key} ;;
  }
  join: charge_type {
    view_label: "Charge Details"
    relationship: many_to_one
    type: left_outer
    sql_on: ${unified_cloud_billing.charge_type_key} = ${charge_type.charge_type_key} ;;
  }
  join: cloud_provider {
    view_label: "Cloud Transacitons"
    relationship: many_to_one
    type: left_outer
    sql_on: ${unified_cloud_billing.cloud_provider_key} = ${cloud_provider.cloud_provider_key} ;;
  }
  join: currency {
    view_label: "Charge Details"
    relationship: many_to_one
    type: left_outer
    sql_on: ${unified_cloud_billing.currency_key} = ${currency.currency_key} ;;
  }
  join: product_name {
    view_label: "Services"
    relationship: many_to_one
    type: left_outer
    sql_on: ${unified_cloud_billing.product_name_key} = ${product_name.product_name_key} ;;
  }
  join: project {
    view_label: "Resource & Projects"
    relationship: many_to_one
    type: left_outer
    sql_on: ${unified_cloud_billing.project_key} = ${project.project_key} ;;
  }
  join: resource_location {
    view_label: "Resource & Projects"
    relationship: many_to_one
    type: left_outer
    sql_on: ${unified_cloud_billing.resource_location_key} = ${resource_location.resource_location_key} ;;
  }
  join: service {
    view_label: "Services"
    relationship: many_to_one
    type: left_outer
    sql_on: ${unified_cloud_billing.service_key} = ${service.service_key}  ;;
  }
  join: service_type {
    view_label: "Services"
    relationship: many_to_one
    type: left_outer
    sql_on: ${unified_cloud_billing.service_type_key} = ${service_type.service_type_key}  ;;
  }
  join: usage_unit_of_measure {
    view_label: "Cloud Transacitons"
    relationship: many_to_one
    type: left_outer
    sql_on: ${unified_cloud_billing.usage_unit_of_measure_key} = ${usage_unit_of_measure.usage_unit_of_measure_key}  ;;
  }
  join: resource_rank {
    view_label: "Resource & Projects"
    relationship: many_to_one
    type: left_outer
    sql_on: ${service.resource_project} = ${resource_rank.resource_project} ;;
  }
}
