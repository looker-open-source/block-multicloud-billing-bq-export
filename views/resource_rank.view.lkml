# If necessary, uncomment the line below to include explore_source.
# include: "phase_2.model.lkml"

view: resource_rank {
  derived_table: {
    explore_source: unified_cloud_billing {
      column: resource_project { field: service.resource_project }
      column: total_cost {}
      derived_column: rank {
        sql: ROW_NUMBER() OVER(ORDER BY total_cost DESC) ;;
      }
      bind_all_filters: yes
    }
  }

  dimension: resource_project {
    hidden: yes
    label: "Services Resource/Project"
  }

  dimension: total_cost {
    hidden: yes
    label: "Cloud Transacitons Total Cost"
    value_format: "$#,##0.00"
    type: number
  }

  dimension: rank {
    type: number
    view_label: "Resource & Projects"
  }
}
