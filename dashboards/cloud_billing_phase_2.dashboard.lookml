- dashboard: cloud_billing_phase_2
  title: 'Cloud Billing: Phase 2'
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  elements:
  - title: TOTAL CLOUD COST
    name: TOTAL CLOUD COST
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: single_value
    fields: [unified_cloud_billing.total_cost, cloud_provider.cloud_provider]
    filters: {}
    sorts: [unified_cloud_billing.total_cost desc]
    limit: 500
    dynamic_fields: [{_kind_hint: measure, table_calculation: total_cost, _type_hint: number,
        category: table_calculation, expression: 'sum(${unified_cloud_billing.total_cost})',
        label: Total Cost, value_format: !!null '', value_format_name: usd_0}, {_kind_hint: measure,
        table_calculation: percentages, _type_hint: string, category: table_calculation,
        expression: 'concat("GCP: ",round(offset(${unified_cloud_billing.total_cost},1)/${total_cost}*100,0),"%
          | AZURE: ",round(${unified_cloud_billing.total_cost}/${total_cost}*100,0),"%
          | AWS: ",round(offset(${unified_cloud_billing.total_cost},2)/${total_cost}*100,0),"%")',
        label: Percentages, value_format: !!null '', value_format_name: !!null ''}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: ''
    value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#9AA0A6",
        font_color: "#FFF", color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: [unified_cloud_billing.total_cost]
    listen:
      Service Type: service_type.service_type
      Usage Start Date: unified_cloud_billing.usage_start_date
    row: 2
    col: 0
    width: 7
    height: 4
  - title: GCP
    name: GCP
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: single_value
    fields: [unified_cloud_billing.total_cost]
    filters:
      cloud_provider.cloud_provider: GCP
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: ''
    value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#34A853",
        font_color: "#FFF", color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Service Type: service_type.service_type
      Usage Start Date: unified_cloud_billing.usage_start_date
    row: 6
    col: 0
    width: 5
    height: 2
  - title: AWS
    name: AWS
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: single_value
    fields: [unified_cloud_billing.total_AWS_cost]
    filters: {}
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: ''
    value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#FF9900",
        font_color: "#FFF", color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Service Type: service_type.service_type
      Usage Start Date: unified_cloud_billing.usage_start_date
    row: 10
    col: 0
    width: 5
    height: 2
  - title: AZURE
    name: AZURE
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: single_value
    fields: [unified_cloud_billing.total_azure_cost]
    filters: {}
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: ''
    value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#00A2ED",
        font_color: "#FFF", color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Service Type: service_type.service_type
      Usage Start Date: unified_cloud_billing.usage_start_date
    row: 8
    col: 0
    width: 5
    height: 2
  - title: GCP Percent
    name: GCP Percent
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: looker_pie
    fields: [unified_cloud_billing.total_cost, cloud]
    filters: {}
    sorts: [cloud desc]
    limit: 500
    dynamic_fields: [{dimension: cloud, _kind_hint: dimension, _type_hint: string,
        category: dimension, expression: 'if(${cloud_provider.cloud_provider}="GCP","GCP","Other")',
        label: Cloud, value_format: !!null '', value_format_name: !!null ''}]
    value_labels: none
    label_type: labPer
    inner_radius: 55
    series_colors:
      GCP: "#34A853"
      Other: "#f2f2f2"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: ''
    value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#9AA0A6",
        font_color: "#FFF", color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    title_hidden: true
    listen:
      Service Type: service_type.service_type
      Usage Start Date: unified_cloud_billing.usage_start_date
    row: 6
    col: 5
    width: 2
    height: 2
  - title: Azure Percent
    name: Azure Percent
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: looker_pie
    fields: [unified_cloud_billing.total_cost, cloud]
    filters: {}
    sorts: [cloud desc]
    limit: 500
    dynamic_fields: [{dimension: cloud, _kind_hint: dimension, _type_hint: string,
        category: dimension, expression: 'if(${cloud_provider.cloud_provider}="Azure","Azure","Other")',
        label: Cloud, value_format: !!null '', value_format_name: !!null ''}]
    value_labels: none
    label_type: labPer
    inner_radius: 55
    color_application:
      collection_id: billing
      palette_id: billing-categorical-0
      options:
        steps: 5
    series_colors:
      GCP: "#FF9900"
      Other: "#f2f2f2"
      AWS: "#00A2ED"
      Azure: "#00A2ED"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: ''
    value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#9AA0A6",
        font_color: "#FFF", color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    title_hidden: true
    listen:
      Service Type: service_type.service_type
      Usage Start Date: unified_cloud_billing.usage_start_date
    row: 8
    col: 5
    width: 2
    height: 2
  - title: AWS Percent
    name: AWS Percent
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: looker_pie
    fields: [unified_cloud_billing.total_cost, cloud]
    filters: {}
    sorts: [cloud desc]
    limit: 500
    dynamic_fields: [{dimension: cloud, _kind_hint: dimension, _type_hint: string,
        category: dimension, expression: 'if(${cloud_provider.cloud_provider}="AWS","AWS","Other")',
        label: Cloud, value_format: !!null '', value_format_name: !!null ''}]
    value_labels: none
    label_type: labPer
    inner_radius: 55
    series_colors:
      GCP: "#FF9900"
      Other: "#f2f2f2"
      AWS: "#FF9900"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: ''
    value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#9AA0A6",
        font_color: "#FFF", color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    title_hidden: true
    listen:
      Service Type: service_type.service_type
      Usage Start Date: unified_cloud_billing.usage_start_date
    row: 10
    col: 5
    width: 2
    height: 2
  - title: DAILY SPEND
    name: DAILY SPEND
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: looker_column
    fields: [cloud_provider.cloud_provider, unified_cloud_billing.usage_start_date,
      unified_cloud_billing.total_cost]
    pivots: [cloud_provider.cloud_provider]
    fill_fields: [unified_cloud_billing.usage_start_date]
    filters: {}
    sorts: [unified_cloud_billing.usage_start_date desc, cloud_provider.cloud_provider]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: AWS - unified_cloud_billing.total_cost,
            id: AWS - unified_cloud_billing.total_cost, name: AWS}, {axisId: Azure
              - unified_cloud_billing.total_cost, id: Azure - unified_cloud_billing.total_cost,
            name: Azure}, {axisId: GCP - unified_cloud_billing.total_cost, id: GCP
              - unified_cloud_billing.total_cost, name: GCP}], showLabels: true, showValues: true,
        valueFormat: '[<1000000]$0,"K";$0.0,,"M"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      AWS - unified_cloud_billing.total_cost: "#FF9900"
      Azure - unified_cloud_billing.total_cost: "#00A2ED"
      GCP - unified_cloud_billing.total_cost: "#34A853"
    reference_lines: [{reference_type: range, line_value: mean, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#ababab",
        range_start: '700000', range_end: '1000000000', label: Over Budget}]
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Service Type: service_type.service_type
      Usage Start Date: unified_cloud_billing.usage_start_date
    row: 2
    col: 7
    width: 17
    height: 10
  - name: "<b>OVERVIEW</b>"
    type: text
    title_text: "<b>OVERVIEW</b>"
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 15
    height: 2
  - name: "<b>BREAKDOWN</b> "
    type: text
    title_text: "<b>BREAKDOWN</b> "
    subtitle_text: ''
    body_text: ''
    row: 12
    col: 0
    width: 24
    height: 2
  - title: TOP BILLED SERVICES
    name: TOP BILLED SERVICES
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: looker_bar
    fields: [product_name.product_name, unified_cloud_billing.total_AWS_cost, unified_cloud_billing.total_azure_cost,
      unified_cloud_billing.total_GCP_cost, unified_cloud_billing.total_cost]
    filters: {}
    sorts: [unified_cloud_billing.total_cost desc]
    limit: 15
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Cost, orientation: bottom, series: [{axisId: unified_cloud_billing.total_AWS_cost,
            id: unified_cloud_billing.total_AWS_cost, name: AWS}, {axisId: unified_cloud_billing.total_azure_cost,
            id: unified_cloud_billing.total_azure_cost, name: Azure}, {axisId: unified_cloud_billing.total_GCP_cost,
            id: unified_cloud_billing.total_GCP_cost, name: GCP}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    font_size: '10'
    label_value_format: '[<1000000]$0,"K";$0,,"M"'
    series_types: {}
    series_colors:
      unified_cloud_billing.total_AWS_cost: "#FF9900"
      unified_cloud_billing.total_azure_cost: "#00A2ED"
      unified_cloud_billing.total_GCP_cost: "#34A853"
    series_labels:
      unified_cloud_billing.total_GCP_cost: GCP
      unified_cloud_billing.total_azure_cost: Azure
      unified_cloud_billing.total_AWS_cost: AWS
    defaults_version: 1
    hidden_fields: [unified_cloud_billing.total_cost]
    listen:
      Service Type: service_type.service_type
      Usage Start Date: unified_cloud_billing.usage_start_date
    row: 14
    col: 8
    width: 8
    height: 9
  - title: TOP CONSUMED SERVICE CATEGORIES
    name: TOP CONSUMED SERVICE CATEGORIES
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: looker_bar
    fields: [unified_cloud_billing.total_AWS_cost, unified_cloud_billing.total_azure_cost,
      unified_cloud_billing.total_GCP_cost, unified_cloud_billing.total_cost, service_type.service_category]
    filters: {}
    sorts: [unified_cloud_billing.total_cost desc]
    limit: 15
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Cost, orientation: bottom, series: [{axisId: unified_cloud_billing.total_AWS_cost,
            id: unified_cloud_billing.total_AWS_cost, name: AWS}, {axisId: unified_cloud_billing.total_azure_cost,
            id: unified_cloud_billing.total_azure_cost, name: Azure}, {axisId: unified_cloud_billing.total_GCP_cost,
            id: unified_cloud_billing.total_GCP_cost, name: GCP}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    hide_legend: false
    font_size: '10'
    label_value_format: '[<1000000]$0,"K";$0,,"M"'
    series_types: {}
    series_colors:
      unified_cloud_billing.total_AWS_cost: "#FF9900"
      unified_cloud_billing.total_azure_cost: "#00A2ED"
      unified_cloud_billing.total_GCP_cost: "#34A853"
    series_labels:
      unified_cloud_billing.total_GCP_cost: GCP
      unified_cloud_billing.total_azure_cost: Azure
      unified_cloud_billing.total_AWS_cost: AWS
    defaults_version: 1
    hidden_fields: [unified_cloud_billing.total_cost]
    show_null_points: true
    interpolation: linear
    listen:
      Service Type: service_type.service_type
      Usage Start Date: unified_cloud_billing.usage_start_date
    row: 14
    col: 0
    width: 8
    height: 9
  - title: TOP BILLED RESOURCES
    name: TOP BILLED RESOURCES
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: looker_bar
    fields: [unified_cloud_billing.total_AWS_cost, unified_cloud_billing.total_azure_cost,
      unified_cloud_billing.total_GCP_cost, unified_cloud_billing.total_cost, service.resource_project]
    filters: {}
    sorts: [unified_cloud_billing.total_cost desc]
    limit: 15
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Cost, orientation: bottom, series: [{axisId: unified_cloud_billing.total_AWS_cost,
            id: unified_cloud_billing.total_AWS_cost, name: AWS}, {axisId: unified_cloud_billing.total_azure_cost,
            id: unified_cloud_billing.total_azure_cost, name: Azure}, {axisId: unified_cloud_billing.total_GCP_cost,
            id: unified_cloud_billing.total_GCP_cost, name: GCP}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    hide_legend: false
    font_size: '10'
    label_value_format: '[<1000000]$0,"K";$0,,"M"'
    series_types: {}
    series_colors:
      unified_cloud_billing.total_AWS_cost: "#FF9900"
      unified_cloud_billing.total_azure_cost: "#00A2ED"
      unified_cloud_billing.total_GCP_cost: "#34A853"
    series_labels:
      unified_cloud_billing.total_GCP_cost: GCP
      unified_cloud_billing.total_azure_cost: Azure
      unified_cloud_billing.total_AWS_cost: AWS
    defaults_version: 1
    hidden_fields: [unified_cloud_billing.total_cost]
    show_null_points: true
    interpolation: linear
    listen:
      Service Type: service_type.service_type
      Usage Start Date: unified_cloud_billing.usage_start_date
    row: 14
    col: 16
    width: 8
    height: 9
  - title: QUARTER OVER QUARTER SPEND BY RESOURCE
    name: QUARTER OVER QUARTER SPEND BY RESOURCE
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: looker_scatter
    fields: [service.resource_project, unified_cloud_billing.total_cost, unified_cloud_billing.total_cost_this_period,
      unified_cloud_billing.total_cost_prior_period, unified_cloud_billing.cost_percent_change,
      cloud_provider.cloud_provider]
    pivots: [cloud_provider.cloud_provider]
    filters:
      unified_cloud_billing.period: Quarter
      unified_cloud_billing.period_selected: "-NULL"
    sorts: [cloud_provider.cloud_provider, change desc]
    limit: 25
    column_limit: 50
    dynamic_fields: [{_kind_hint: supermeasure, table_calculation: change, _type_hint: number,
        category: table_calculation, expression: 'coalesce(pivot_index(${unified_cloud_billing.cost_percent_change},
          1),pivot_index(${unified_cloud_billing.cost_percent_change}, 2),pivot_index(${unified_cloud_billing.cost_percent_change},
          3))', label: "%Change", value_format: !!null '', value_format_name: percent_1}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    y_axes: [{label: Period Over Period Change, orientation: left, series: [{axisId: unified_cloud_billing.cost_percent_change,
            id: AWS - unified_cloud_billing.cost_percent_change, name: AWS}, {axisId: unified_cloud_billing.cost_percent_change,
            id: Azure - unified_cloud_billing.cost_percent_change, name: Azure}, {
            axisId: unified_cloud_billing.cost_percent_change, id: GCP - unified_cloud_billing.cost_percent_change,
            name: GCP}], showLabels: true, showValues: false, maxValue: 1, minValue: !!null '',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    size_by_field: unified_cloud_billing.total_cost_this_period
    series_types: {}
    series_colors:
      AWS - unified_cloud_billing.cost_percent_change: "#FF9900"
      Azure - unified_cloud_billing.cost_percent_change: "#00A2ED"
      GCP - unified_cloud_billing.cost_percent_change: "#34A853"
    label_color: [black]
    reference_lines: [{reference_type: range, line_value: mean, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: center, color: "#BEBEBE",
        range_start: "-.05", range_end: ".05", label: NORMAL RANGE}, {reference_type: line,
        line_value: "-.05", range_start: max, range_end: min, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#5c5c5c"},
      {reference_type: line, line_value: ".05", range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#5c5c5c"}, {reference_type: range, line_value: mean, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: center, color: "#ffc003",
        range_start: ".05", range_end: ".1", label: ALERT}, {reference_type: range,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: center,
        color: "#4af56e", range_start: "-.1", label: GOOD, range_end: "-.05"}, {reference_type: line,
        range_start: max, range_end: min, margin_top: deviation, margin_value: mean,
        margin_bottom: deviation, label_position: right, color: "#5c5c5c", line_value: ".1"},
      {reference_type: range, line_value: mean, range_end: '1', margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: center, color: "#b23627",
        range_start: ".1", label: INVESTIGATE}, {reference_type: line, line_value: "-.1",
        range_start: max, range_end: min, margin_top: deviation, margin_value: mean,
        margin_bottom: deviation, label_position: right, color: "#5c5c5c"}, {reference_type: range,
        line_value: mean, margin_top: deviation, margin_value: mean, margin_bottom: deviation,
        label_position: center, color: "#478dff", range_end: "-.1", range_start: "-1",
        label: GREAT}]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [unified_cloud_billing.total_cost, unified_cloud_billing.total_cost_prior_period,
      change]
    listen: {}
    row: 35
    col: 0
    width: 24
    height: 10
  - name: "<b>AREAS TO WATCH</b> "
    type: text
    title_text: "<b>AREAS TO WATCH</b> "
    subtitle_text: ''
    body_text: ''
    row: 23
    col: 0
    width: 24
    height: 2
  - title: QUARTER OVER QUARTER SPEND BY PRODUCT
    name: QUARTER OVER QUARTER SPEND BY PRODUCT
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: looker_scatter
    fields: [product_name.product_name, unified_cloud_billing.total_cost, unified_cloud_billing.total_cost_this_period,
      unified_cloud_billing.total_cost_prior_period, unified_cloud_billing.cost_percent_change,
      cloud_provider.cloud_provider]
    pivots: [cloud_provider.cloud_provider]
    filters:
      unified_cloud_billing.period: Quarter
      unified_cloud_billing.period_selected: "-NULL"
    sorts: [cloud_provider.cloud_provider, change desc]
    limit: 100
    column_limit: 50
    dynamic_fields: [{_kind_hint: supermeasure, table_calculation: change, _type_hint: number,
        category: table_calculation, expression: 'coalesce(pivot_index(${unified_cloud_billing.cost_percent_change},
          1),pivot_index(${unified_cloud_billing.cost_percent_change}, 2),pivot_index(${unified_cloud_billing.cost_percent_change},
          3))', label: "%Change", value_format: !!null '', value_format_name: percent_1}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    y_axes: [{label: Period Over Period Change, orientation: left, series: [{axisId: unified_cloud_billing.cost_percent_change,
            id: AWS - unified_cloud_billing.cost_percent_change, name: AWS}, {axisId: unified_cloud_billing.cost_percent_change,
            id: Azure - unified_cloud_billing.cost_percent_change, name: Azure}, {
            axisId: unified_cloud_billing.cost_percent_change, id: GCP - unified_cloud_billing.cost_percent_change,
            name: GCP}], showLabels: true, showValues: false, maxValue: 1, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    size_by_field: unified_cloud_billing.total_cost_this_period
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '25'
    series_types: {}
    series_colors:
      AWS - unified_cloud_billing.cost_percent_change: "#FF9900"
      Azure - unified_cloud_billing.cost_percent_change: "#00A2ED"
      GCP - unified_cloud_billing.cost_percent_change: "#34A853"
    label_color: [black]
    reference_lines: [{reference_type: range, line_value: mean, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: center, color: "#BEBEBE",
        range_start: "-.05", range_end: ".05", label: NORMAL RANGE}, {reference_type: line,
        line_value: "-.05", range_start: max, range_end: min, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#5c5c5c"},
      {reference_type: line, line_value: ".05", range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#5c5c5c"}, {reference_type: range, line_value: mean, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: center, color: "#ffc003",
        range_start: ".05", range_end: ".1", label: ALERT}, {reference_type: range,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: center,
        color: "#34A853", range_start: "-.1", label: GOOD, range_end: "-.05"}, {reference_type: line,
        range_start: max, range_end: min, margin_top: deviation, margin_value: mean,
        margin_bottom: deviation, label_position: right, color: "#5c5c5c", line_value: ".1"},
      {reference_type: range, line_value: mean, range_end: '1', margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: center, color: "#b23627",
        range_start: ".1", label: INVESTIGATE}, {reference_type: line, line_value: "-.1",
        range_start: max, range_end: min, margin_top: deviation, margin_value: mean,
        margin_bottom: deviation, label_position: right, color: "#5c5c5c"}, {reference_type: range,
        line_value: mean, margin_top: deviation, margin_value: mean, margin_bottom: deviation,
        label_position: center, color: "#478dff", range_end: "-.1", range_start: "-1",
        label: GREAT}]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [unified_cloud_billing.total_cost, unified_cloud_billing.total_cost_prior_period,
      change]
    listen: {}
    row: 25
    col: 0
    width: 24
    height: 10
  - title: Nav
    name: Nav
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: single_value
    fields: [unified_cloud_billing.dash_nav]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    row: 0
    col: 15
    width: 9
    height: 2
  filters:
  - name: Usage Start Date
    title: Usage Start Date
    type: field_filter
    default_value: 90 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    listens_to_filters: []
    field: unified_cloud_billing.usage_start_date
  - name: Service Category
    title: Service Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    listens_to_filters: []
    field: service_type.service_category
  - name: Service Type
    title: Service Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    listens_to_filters: []
    field: service_type.service_type
  - name: Cloud Provider
    title: Cloud Provider
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
      options: []
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    listens_to_filters: []
    field: cloud_provider.cloud_provider