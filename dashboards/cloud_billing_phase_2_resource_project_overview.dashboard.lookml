- dashboard: cloud_billing_phase_2__resourceproject_overview
  title: 'Cloud Billing: Phase 2 - Resource/Project Overview'
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Rank 1 Cost
    name: Rank 1 Cost
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: single_value
    fields: [service.resource_project, cloud_provider.cloud_provider, unified_cloud_billing.total_cost_this_period]
    filters:
      resource_rank.rank: '1'
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#5F6368"
    single_value_title: BILLED
    value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    conditional_formatting: []
    show_view_names: false
    defaults_version: 1
    series_types: {}
    hidden_fields: [cloud_provider.cloud_provider, service.resource_project]
    listen:
      Timeframe: unified_cloud_billing.period
    row: 0
    col: 7
    width: 2
    height: 2
  - title: Rank 1 Resource
    name: Rank 1 Resource
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: single_value
    fields: [service.resource_project, cloud_provider.cloud_provider, unified_cloud_billing.resource_display,
      unified_cloud_billing.period_selected]
    filters:
      resource_rank.rank: '1'
      unified_cloud_billing.period_selected: "%This%"
    sorts: [service.resource_project]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#5F6368"
    value_format: ''
    conditional_formatting: []
    show_view_names: false
    defaults_version: 1
    series_types: {}
    hidden_fields: [cloud_provider.cloud_provider, service.resource_project, unified_cloud_billing.period_selected]
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    listen:
      Timeframe: unified_cloud_billing.period
    row: 0
    col: 2
    width: 5
    height: 2
  - title: Rank 1 Change
    name: Rank 1 Change
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: single_value
    fields: [service.resource_project, cloud_provider.cloud_provider, unified_cloud_billing.cost_percent_change]
    filters:
      resource_rank.rank: '1'
    sorts: [unified_cloud_billing.cost_percent_change desc]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#5F6368"
    single_value_title: PoP
    value_format: ''
    conditional_formatting: [{type: less than, value: -0.1, background_color: '',
        font_color: "#478dff", color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: less
          than, value: -0.05, background_color: '', font_color: "#34A853", color_application: {
          collection_id: google, palette_id: google-diverging-0}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0.05, background_color: '',
        font_color: "#BEBEBE", color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: less
          than, value: 0.1, background_color: '', font_color: "#ffc003", color_application: {
          collection_id: google, palette_id: google-diverging-0}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: greater than, value: 0.1,
        background_color: '', font_color: "#b23627", color_application: {collection_id: google,
          palette_id: google-diverging-0}, bold: false, italic: false, strikethrough: false,
        fields: !!null ''}]
    show_view_names: false
    defaults_version: 1
    series_types: {}
    hidden_fields: [cloud_provider.cloud_provider, service.resource_project]
    value_labels: legend
    label_type: labPer
    listen:
      Timeframe: unified_cloud_billing.period
    row: 2
    col: 7
    width: 2
    height: 2
  - title: Rank 1 Usage
    name: Rank 1 Usage
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: looker_grid
    fields: [product_name.product_name, usage_unit_of_measure.usage_unit_of_measure,
      unified_cloud_billing.total_usage_prior_period, unified_cloud_billing.total_usage_this_period,
      unified_cloud_billing.usage_percent_change]
    filters:
      resource_rank.rank: '1'
      unified_cloud_billing.period_selected: "-NULL"
    sorts: [unified_cloud_billing.total_usage_prior_period desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '10'
    rows_font_size: '9'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: billing
      palette_id: billing-categorical-0
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      product_name.product_name: Product
      usage_unit_of_measure.usage_unit_of_measure: Unit
      unified_cloud_billing.total_usage_prior_period: Prev. Period
      unified_cloud_billing.total_usage_this_period: Cur. Period
      unified_cloud_billing.usage_percent_change: Change
    series_cell_visualizations:
      unified_cloud_billing.total_usage_prior_period:
        is_active: false
    conditional_formatting: []
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    stacking: normal
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
    y_axes: [{label: '', orientation: left, series: [{axisId: unified_cloud_billing.total_AWS_cost,
            id: unified_cloud_billing.total_AWS_cost, name: Total AWS Cost}, {axisId: unified_cloud_billing.total_azure_cost,
            id: unified_cloud_billing.total_azure_cost, name: Total Azure Cost}, {
            axisId: unified_cloud_billing.total_GCP_cost, id: unified_cloud_billing.total_GCP_cost,
            name: Total GCP Cost}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: unified_cloud_billing.total_usage_quantity,
            id: unified_cloud_billing.total_usage_quantity, name: Total Usage Quantity}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      unified_cloud_billing.total_cost: "#BDC1C6"
      unified_cloud_billing.total_azure_cost: "#00A2ED"
      unified_cloud_billing.total_AWS_cost: "#FF9900"
      unified_cloud_billing.total_GCP_cost: "#34A853"
    trend_lines: [{color: "#000000", label_position: right, order: 3, period: 7, regression_type: linear,
        series_index: 1, show_label: true}]
    show_null_points: false
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#5F6368"
    single_value_title: MoM
    value_format: ''
    defaults_version: 1
    hidden_fields: []
    value_labels: legend
    label_type: labPer
    up_color: false
    down_color: false
    total_color: false
    title_hidden: true
    listen:
      Timeframe: unified_cloud_billing.period
    row: 0
    col: 15
    width: 9
    height: 4
  - title: Rank 1 Breakdown
    name: Rank 1 Breakdown
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: looker_bar
    fields: [service.resource_project, cloud_provider.cloud_provider, service_type.service_type,
      unified_cloud_billing.total_AWS_cost, unified_cloud_billing.total_azure_cost,
      unified_cloud_billing.total_GCP_cost, unified_cloud_billing.total_cost]
    filters:
      resource_rank.rank: '1'
      unified_cloud_billing.total_cost_this_period: ">0"
      unified_cloud_billing.period_selected: "%This%"
    sorts: [unified_cloud_billing.total_cost desc]
    limit: 500
    column_limit: 50
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
    totals_color: black
    color_application:
      collection_id: billing
      palette_id: billing-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: unified_cloud_billing.total_cost_this_period,
            id: unified_cloud_billing.total_cost_this_period, name: Total Cost This
              Period}], showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hide_legend: true
    label_value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    series_types: {}
    series_colors:
      unified_cloud_billing.total_AWS_cost: "#FF9900"
      unified_cloud_billing.total_azure_cost: "#00A2ED"
    value_labels: labels
    label_type: labPer
    inner_radius: 65
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#5F6368"
    single_value_title: BILLED
    value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    conditional_formatting: []
    defaults_version: 1
    hidden_fields: [cloud_provider.cloud_provider, service.resource_project, unified_cloud_billing.total_cost]
    title_hidden: true
    listen:
      Timeframe: unified_cloud_billing.period
    row: 0
    col: 9
    width: 6
    height: 4
  - title: Rank 1 Trend
    name: Rank 1 Trend
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: looker_line
    fields: [service.resource_project, cloud_provider.cloud_provider, unified_cloud_billing.total_cost_this_period,
      unified_cloud_billing.usage_start_date]
    filters:
      resource_rank.rank: '1'
      unified_cloud_billing.period_selected: "%This%"
    sorts: [unified_cloud_billing.total_cost_this_period desc]
    limit: 500
    column_limit: 50
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    y_axes: [{label: '', orientation: left, series: [{axisId: unified_cloud_billing.total_cost_this_period,
            id: unified_cloud_billing.total_cost_this_period, name: Total Cost This
              Period}], showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      unified_cloud_billing.total_cost_this_period: "#5F6368"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#5F6368"
    single_value_title: BILLED
    value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    conditional_formatting: []
    defaults_version: 1
    hidden_fields: [cloud_provider.cloud_provider, service.resource_project]
    title_hidden: true
    listen:
      Timeframe: unified_cloud_billing.period
    row: 2
    col: 2
    width: 5
    height: 2
  - title: Rank 2 Resource
    name: Rank 2 Resource
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: single_value
    fields: [service.resource_project, cloud_provider.cloud_provider, unified_cloud_billing.resource_display,
      unified_cloud_billing.period_selected]
    filters:
      resource_rank.rank: '2'
      unified_cloud_billing.period_selected: "%This%"
    sorts: [service.resource_project]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#5F6368"
    value_format: ''
    conditional_formatting: []
    show_view_names: false
    defaults_version: 1
    series_types: {}
    hidden_fields: [cloud_provider.cloud_provider, service.resource_project, unified_cloud_billing.period_selected]
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    listen:
      Timeframe: unified_cloud_billing.period
    row: 4
    col: 2
    width: 5
    height: 2
  - title: Rank 2 Cost
    name: Rank 2 Cost
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: single_value
    fields: [service.resource_project, cloud_provider.cloud_provider, unified_cloud_billing.total_cost_this_period]
    filters:
      resource_rank.rank: '2'
    sorts: [unified_cloud_billing.total_cost_this_period desc]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#5F6368"
    single_value_title: BILLED
    value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    conditional_formatting: []
    show_view_names: false
    defaults_version: 1
    series_types: {}
    hidden_fields: [cloud_provider.cloud_provider, service.resource_project]
    listen:
      Timeframe: unified_cloud_billing.period
    row: 4
    col: 7
    width: 2
    height: 2
  - title: Rank 2 Usage
    name: Rank 2 Usage
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: looker_grid
    fields: [product_name.product_name, usage_unit_of_measure.usage_unit_of_measure,
      unified_cloud_billing.total_usage_prior_period, unified_cloud_billing.total_usage_this_period,
      unified_cloud_billing.usage_percent_change]
    filters:
      resource_rank.rank: '2'
      unified_cloud_billing.period_selected: "-NULL"
    sorts: [unified_cloud_billing.total_usage_prior_period desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '10'
    rows_font_size: '9'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: billing
      palette_id: billing-categorical-0
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      product_name.product_name: Product
      usage_unit_of_measure.usage_unit_of_measure: Unit
      unified_cloud_billing.total_usage_prior_period: Prev. Period
      unified_cloud_billing.total_usage_this_period: Cur. Period
      unified_cloud_billing.usage_percent_change: Change
    series_cell_visualizations:
      unified_cloud_billing.total_usage_prior_period:
        is_active: false
    conditional_formatting: []
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    stacking: normal
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
    y_axes: [{label: '', orientation: left, series: [{axisId: unified_cloud_billing.total_AWS_cost,
            id: unified_cloud_billing.total_AWS_cost, name: Total AWS Cost}, {axisId: unified_cloud_billing.total_azure_cost,
            id: unified_cloud_billing.total_azure_cost, name: Total Azure Cost}, {
            axisId: unified_cloud_billing.total_GCP_cost, id: unified_cloud_billing.total_GCP_cost,
            name: Total GCP Cost}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: unified_cloud_billing.total_usage_quantity,
            id: unified_cloud_billing.total_usage_quantity, name: Total Usage Quantity}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      unified_cloud_billing.total_cost: "#BDC1C6"
      unified_cloud_billing.total_azure_cost: "#00A2ED"
      unified_cloud_billing.total_AWS_cost: "#FF9900"
      unified_cloud_billing.total_GCP_cost: "#34A853"
    trend_lines: [{color: "#000000", label_position: right, order: 3, period: 7, regression_type: linear,
        series_index: 1, show_label: true}]
    show_null_points: false
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#5F6368"
    single_value_title: MoM
    value_format: ''
    defaults_version: 1
    hidden_fields: []
    value_labels: legend
    label_type: labPer
    up_color: false
    down_color: false
    total_color: false
    title_hidden: true
    listen:
      Timeframe: unified_cloud_billing.period
    row: 4
    col: 15
    width: 9
    height: 4
  - title: Rank 2 Breakdown
    name: Rank 2 Breakdown
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: looker_bar
    fields: [service.resource_project, cloud_provider.cloud_provider, service_type.service_type,
      unified_cloud_billing.total_AWS_cost, unified_cloud_billing.total_azure_cost,
      unified_cloud_billing.total_GCP_cost, unified_cloud_billing.total_cost]
    filters:
      resource_rank.rank: '2'
      unified_cloud_billing.total_cost_this_period: ">0"
      unified_cloud_billing.period_selected: "%This%"
    sorts: [unified_cloud_billing.total_cost desc]
    limit: 500
    column_limit: 50
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
    totals_color: black
    color_application:
      collection_id: billing
      palette_id: billing-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: unified_cloud_billing.total_cost_this_period,
            id: unified_cloud_billing.total_cost_this_period, name: Total Cost This
              Period}], showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hide_legend: true
    label_value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    series_types: {}
    series_colors:
      unified_cloud_billing.total_AWS_cost: "#FF9900"
      unified_cloud_billing.total_azure_cost: "#00A2ED"
    value_labels: labels
    label_type: labPer
    inner_radius: 65
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#5F6368"
    single_value_title: BILLED
    value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    conditional_formatting: []
    defaults_version: 1
    hidden_fields: [cloud_provider.cloud_provider, service.resource_project, unified_cloud_billing.total_cost]
    title_hidden: true
    listen:
      Timeframe: unified_cloud_billing.period
    row: 4
    col: 9
    width: 6
    height: 4
  - title: Rank 2 Trend
    name: Rank 2 Trend
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: looker_line
    fields: [service.resource_project, cloud_provider.cloud_provider, unified_cloud_billing.total_cost_this_period,
      unified_cloud_billing.usage_start_date]
    filters:
      resource_rank.rank: '2'
      unified_cloud_billing.period_selected: "%This%"
    sorts: [unified_cloud_billing.total_cost_this_period desc]
    limit: 500
    column_limit: 50
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    y_axes: [{label: '', orientation: left, series: [{axisId: unified_cloud_billing.total_cost_this_period,
            id: unified_cloud_billing.total_cost_this_period, name: Total Cost This
              Period}], showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      unified_cloud_billing.total_cost_this_period: "#5F6368"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#5F6368"
    single_value_title: BILLED
    value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    conditional_formatting: []
    defaults_version: 1
    hidden_fields: [cloud_provider.cloud_provider, service.resource_project]
    title_hidden: true
    listen:
      Timeframe: unified_cloud_billing.period
    row: 6
    col: 2
    width: 5
    height: 2
  - title: Rank 4 Usage
    name: Rank 4 Usage
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: looker_grid
    fields: [product_name.product_name, usage_unit_of_measure.usage_unit_of_measure,
      unified_cloud_billing.total_usage_prior_period, unified_cloud_billing.total_usage_this_period,
      unified_cloud_billing.usage_percent_change]
    filters:
      resource_rank.rank: '4'
      unified_cloud_billing.period_selected: "-NULL"
    sorts: [unified_cloud_billing.total_usage_prior_period desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '10'
    rows_font_size: '9'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: billing
      palette_id: billing-categorical-0
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      product_name.product_name: Product
      usage_unit_of_measure.usage_unit_of_measure: Unit
      unified_cloud_billing.total_usage_prior_period: Prev. Period
      unified_cloud_billing.total_usage_this_period: Cur. Period
      unified_cloud_billing.usage_percent_change: Change
    series_cell_visualizations:
      unified_cloud_billing.total_usage_prior_period:
        is_active: false
    conditional_formatting: []
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    stacking: normal
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
    y_axes: [{label: '', orientation: left, series: [{axisId: unified_cloud_billing.total_AWS_cost,
            id: unified_cloud_billing.total_AWS_cost, name: Total AWS Cost}, {axisId: unified_cloud_billing.total_azure_cost,
            id: unified_cloud_billing.total_azure_cost, name: Total Azure Cost}, {
            axisId: unified_cloud_billing.total_GCP_cost, id: unified_cloud_billing.total_GCP_cost,
            name: Total GCP Cost}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: unified_cloud_billing.total_usage_quantity,
            id: unified_cloud_billing.total_usage_quantity, name: Total Usage Quantity}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      unified_cloud_billing.total_cost: "#BDC1C6"
      unified_cloud_billing.total_azure_cost: "#00A2ED"
      unified_cloud_billing.total_AWS_cost: "#FF9900"
      unified_cloud_billing.total_GCP_cost: "#34A853"
    trend_lines: [{color: "#000000", label_position: right, order: 3, period: 7, regression_type: linear,
        series_index: 1, show_label: true}]
    show_null_points: false
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#5F6368"
    single_value_title: MoM
    value_format: ''
    defaults_version: 1
    hidden_fields: []
    value_labels: legend
    label_type: labPer
    up_color: false
    down_color: false
    total_color: false
    title_hidden: true
    listen:
      Timeframe: unified_cloud_billing.period
    row: 12
    col: 15
    width: 9
    height: 4
  - title: Rank 4 Cost
    name: Rank 4 Cost
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: single_value
    fields: [service.resource_project, cloud_provider.cloud_provider, unified_cloud_billing.total_cost_this_period]
    filters:
      resource_rank.rank: '4'
    sorts: [unified_cloud_billing.total_cost_this_period desc]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#5F6368"
    single_value_title: BILLED
    value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    conditional_formatting: []
    show_view_names: false
    defaults_version: 1
    series_types: {}
    hidden_fields: [cloud_provider.cloud_provider, service.resource_project]
    listen:
      Timeframe: unified_cloud_billing.period
    row: 12
    col: 7
    width: 2
    height: 2
  - title: Rank 3 Breakdown
    name: Rank 3 Breakdown
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: looker_bar
    fields: [service.resource_project, cloud_provider.cloud_provider, service_type.service_type,
      unified_cloud_billing.total_AWS_cost, unified_cloud_billing.total_azure_cost,
      unified_cloud_billing.total_GCP_cost, unified_cloud_billing.total_cost]
    filters:
      resource_rank.rank: '4'
      unified_cloud_billing.total_cost_this_period: ">0"
      unified_cloud_billing.period_selected: "%This%"
    sorts: [unified_cloud_billing.total_cost desc]
    limit: 500
    column_limit: 50
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
    totals_color: black
    color_application:
      collection_id: billing
      palette_id: billing-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: unified_cloud_billing.total_cost_this_period,
            id: unified_cloud_billing.total_cost_this_period, name: Total Cost This
              Period}], showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hide_legend: true
    label_value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    series_types: {}
    series_colors:
      unified_cloud_billing.total_AWS_cost: "#FF9900"
      unified_cloud_billing.total_azure_cost: "#00A2ED"
    value_labels: labels
    label_type: labPer
    inner_radius: 65
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#5F6368"
    single_value_title: BILLED
    value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    conditional_formatting: []
    defaults_version: 1
    hidden_fields: [cloud_provider.cloud_provider, service.resource_project, unified_cloud_billing.total_cost]
    title_hidden: true
    listen:
      Timeframe: unified_cloud_billing.period
    row: 12
    col: 9
    width: 6
    height: 4
  - title: Rank 4 Trend
    name: Rank 4 Trend
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: looker_line
    fields: [service.resource_project, cloud_provider.cloud_provider, unified_cloud_billing.total_cost_this_period,
      unified_cloud_billing.usage_start_date]
    filters:
      resource_rank.rank: '4'
      unified_cloud_billing.period_selected: "%This%"
    sorts: [unified_cloud_billing.total_cost_this_period desc]
    limit: 500
    column_limit: 50
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    y_axes: [{label: '', orientation: left, series: [{axisId: unified_cloud_billing.total_cost_this_period,
            id: unified_cloud_billing.total_cost_this_period, name: Total Cost This
              Period}], showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      unified_cloud_billing.total_cost_this_period: "#5F6368"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#5F6368"
    single_value_title: BILLED
    value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    conditional_formatting: []
    defaults_version: 1
    hidden_fields: [cloud_provider.cloud_provider, service.resource_project]
    title_hidden: true
    listen:
      Timeframe: unified_cloud_billing.period
    row: 14
    col: 2
    width: 5
    height: 2
  - title: Rank 4 Resource
    name: Rank 4 Resource
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: single_value
    fields: [service.resource_project, cloud_provider.cloud_provider, unified_cloud_billing.resource_display,
      unified_cloud_billing.period_selected]
    filters:
      resource_rank.rank: '4'
      unified_cloud_billing.period_selected: "%This%"
    sorts: [service.resource_project]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#5F6368"
    value_format: ''
    conditional_formatting: []
    show_view_names: false
    defaults_version: 1
    series_types: {}
    hidden_fields: [cloud_provider.cloud_provider, service.resource_project, unified_cloud_billing.period_selected]
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    listen:
      Timeframe: unified_cloud_billing.period
    row: 12
    col: 2
    width: 5
    height: 2
  - title: '2'
    name: '2'
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: single_value
    fields: [resource_rank.rank]
    filters:
      unified_cloud_billing.period: Week
      resource_rank.rank: '2'
    sorts: [resource_rank.rank]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 4
    col: 0
    width: 2
    height: 2
  - title: '1'
    name: '1'
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: single_value
    fields: [resource_rank.rank]
    filters:
      unified_cloud_billing.period: Week
      resource_rank.rank: '1'
    sorts: [resource_rank.rank]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 2
    height: 2
  - title: '3'
    name: '3'
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: single_value
    fields: [resource_rank.rank]
    filters:
      unified_cloud_billing.period: Week
      resource_rank.rank: '3'
    sorts: [resource_rank.rank]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 8
    col: 0
    width: 2
    height: 2
  - title: Rank 4 Change
    name: Rank 4 Change
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: single_value
    fields: [service.resource_project, cloud_provider.cloud_provider, unified_cloud_billing.cost_percent_change]
    filters:
      resource_rank.rank: '4'
    sorts: [unified_cloud_billing.cost_percent_change desc]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#5F6368"
    single_value_title: PoP
    value_format: ''
    conditional_formatting: [{type: less than, value: -0.1, background_color: '',
        font_color: "#478dff", color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: less
          than, value: -0.05, background_color: '', font_color: "#34A853", color_application: {
          collection_id: google, palette_id: google-diverging-0}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0.05, background_color: '',
        font_color: "#BEBEBE", color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: less
          than, value: 0.1, background_color: '', font_color: "#ffc003", color_application: {
          collection_id: google, palette_id: google-diverging-0}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: greater than, value: 0.1,
        background_color: '', font_color: "#b23627", color_application: {collection_id: google,
          palette_id: google-diverging-0}, bold: false, italic: false, strikethrough: false,
        fields: !!null ''}]
    show_view_names: false
    defaults_version: 1
    series_types: {}
    hidden_fields: [cloud_provider.cloud_provider, service.resource_project]
    value_labels: legend
    label_type: labPer
    listen:
      Timeframe: unified_cloud_billing.period
    row: 14
    col: 7
    width: 2
    height: 2
  - title: Rank 2 Change
    name: Rank 2 Change
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: single_value
    fields: [service.resource_project, cloud_provider.cloud_provider, unified_cloud_billing.cost_percent_change]
    filters:
      resource_rank.rank: '2'
    sorts: [unified_cloud_billing.cost_percent_change desc]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#5F6368"
    single_value_title: PoP
    value_format: ''
    conditional_formatting: [{type: less than, value: -0.1, background_color: '',
        font_color: "#478dff", color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: less
          than, value: -0.05, background_color: '', font_color: "#34A853", color_application: {
          collection_id: google, palette_id: google-diverging-0}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0.05, background_color: '',
        font_color: "#BEBEBE", color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: less
          than, value: 0.1, background_color: '', font_color: "#ffc003", color_application: {
          collection_id: google, palette_id: google-diverging-0}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: greater than, value: 0.1,
        background_color: '', font_color: "#b23627", color_application: {collection_id: google,
          palette_id: google-diverging-0}, bold: false, italic: false, strikethrough: false,
        fields: !!null ''}]
    show_view_names: false
    defaults_version: 1
    series_types: {}
    hidden_fields: [cloud_provider.cloud_provider, service.resource_project]
    value_labels: legend
    label_type: labPer
    listen:
      Timeframe: unified_cloud_billing.period
    row: 6
    col: 7
    width: 2
    height: 2
  - title: '4'
    name: '4'
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: single_value
    fields: [resource_rank.rank]
    filters:
      unified_cloud_billing.period: Week
      resource_rank.rank: '4'
    sorts: [resource_rank.rank]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 12
    col: 0
    width: 2
    height: 2
  - title: Rank 5 Trend
    name: Rank 5 Trend
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: looker_line
    fields: [service.resource_project, cloud_provider.cloud_provider, unified_cloud_billing.total_cost_this_period,
      unified_cloud_billing.usage_start_date]
    filters:
      resource_rank.rank: '5'
      unified_cloud_billing.period_selected: "%This%"
    sorts: [unified_cloud_billing.total_cost_this_period desc]
    limit: 500
    column_limit: 50
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    y_axes: [{label: '', orientation: left, series: [{axisId: unified_cloud_billing.total_cost_this_period,
            id: unified_cloud_billing.total_cost_this_period, name: Total Cost This
              Period}], showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      unified_cloud_billing.total_cost_this_period: "#5F6368"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#5F6368"
    single_value_title: BILLED
    value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    conditional_formatting: []
    defaults_version: 1
    hidden_fields: [cloud_provider.cloud_provider, service.resource_project]
    title_hidden: true
    listen:
      Timeframe: unified_cloud_billing.period
    row: 18
    col: 2
    width: 5
    height: 2
  - title: Rank 5 Cost
    name: Rank 5 Cost
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: single_value
    fields: [service.resource_project, cloud_provider.cloud_provider, unified_cloud_billing.total_cost_this_period]
    filters:
      resource_rank.rank: '5'
    sorts: [unified_cloud_billing.total_cost_this_period desc]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#5F6368"
    single_value_title: BILLED
    value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    conditional_formatting: []
    show_view_names: false
    defaults_version: 1
    series_types: {}
    hidden_fields: [cloud_provider.cloud_provider, service.resource_project]
    listen:
      Timeframe: unified_cloud_billing.period
    row: 16
    col: 7
    width: 2
    height: 2
  - title: Rank 5 Resource
    name: Rank 5 Resource
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: single_value
    fields: [service.resource_project, cloud_provider.cloud_provider, unified_cloud_billing.resource_display,
      unified_cloud_billing.period_selected]
    filters:
      resource_rank.rank: '5'
      unified_cloud_billing.period_selected: "%This%"
    sorts: [service.resource_project]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#5F6368"
    value_format: ''
    conditional_formatting: []
    show_view_names: false
    defaults_version: 1
    series_types: {}
    hidden_fields: [cloud_provider.cloud_provider, service.resource_project, unified_cloud_billing.period_selected]
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    listen:
      Timeframe: unified_cloud_billing.period
    row: 16
    col: 2
    width: 5
    height: 2
  - title: Rank 5 Change
    name: Rank 5 Change
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: single_value
    fields: [service.resource_project, cloud_provider.cloud_provider, unified_cloud_billing.cost_percent_change]
    filters:
      resource_rank.rank: '5'
    sorts: [unified_cloud_billing.cost_percent_change desc]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#5F6368"
    single_value_title: PoP
    value_format: ''
    conditional_formatting: [{type: less than, value: -0.1, background_color: '',
        font_color: "#478dff", color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: less
          than, value: -0.05, background_color: '', font_color: "#34A853", color_application: {
          collection_id: google, palette_id: google-diverging-0}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0.05, background_color: '',
        font_color: "#BEBEBE", color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: less
          than, value: 0.1, background_color: '', font_color: "#ffc003", color_application: {
          collection_id: google, palette_id: google-diverging-0}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: greater than, value: 0.1,
        background_color: '', font_color: "#b23627", color_application: {collection_id: google,
          palette_id: google-diverging-0}, bold: false, italic: false, strikethrough: false,
        fields: !!null ''}]
    show_view_names: false
    defaults_version: 1
    series_types: {}
    hidden_fields: [cloud_provider.cloud_provider, service.resource_project]
    value_labels: legend
    label_type: labPer
    listen:
      Timeframe: unified_cloud_billing.period
    row: 18
    col: 7
    width: 2
    height: 2
  - title: Rank 5 Breakdown
    name: Rank 5 Breakdown
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: looker_bar
    fields: [service.resource_project, cloud_provider.cloud_provider, service_type.service_type,
      unified_cloud_billing.total_AWS_cost, unified_cloud_billing.total_azure_cost,
      unified_cloud_billing.total_GCP_cost, unified_cloud_billing.total_cost]
    filters:
      resource_rank.rank: '5'
      unified_cloud_billing.total_cost_this_period: ">0"
      unified_cloud_billing.period_selected: "%This%"
    sorts: [unified_cloud_billing.total_cost desc]
    limit: 500
    column_limit: 50
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
    totals_color: black
    color_application:
      collection_id: billing
      palette_id: billing-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: unified_cloud_billing.total_cost_this_period,
            id: unified_cloud_billing.total_cost_this_period, name: Total Cost This
              Period}], showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hide_legend: true
    label_value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    series_types: {}
    series_colors:
      unified_cloud_billing.total_AWS_cost: "#FF9900"
      unified_cloud_billing.total_azure_cost: "#00A2ED"
    value_labels: labels
    label_type: labPer
    inner_radius: 65
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#5F6368"
    single_value_title: BILLED
    value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    conditional_formatting: []
    defaults_version: 1
    hidden_fields: [cloud_provider.cloud_provider, service.resource_project, unified_cloud_billing.total_cost]
    title_hidden: true
    listen:
      Timeframe: unified_cloud_billing.period
    row: 16
    col: 9
    width: 6
    height: 4
  - title: Rank 5 Usage
    name: Rank 5 Usage
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: looker_grid
    fields: [product_name.product_name, usage_unit_of_measure.usage_unit_of_measure,
      unified_cloud_billing.total_usage_prior_period, unified_cloud_billing.total_usage_this_period,
      unified_cloud_billing.usage_percent_change]
    filters:
      resource_rank.rank: '5'
      unified_cloud_billing.period_selected: "-NULL"
    sorts: [unified_cloud_billing.total_usage_prior_period desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '10'
    rows_font_size: '9'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: billing
      palette_id: billing-categorical-0
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      product_name.product_name: Product
      usage_unit_of_measure.usage_unit_of_measure: Unit
      unified_cloud_billing.total_usage_prior_period: Prev. Period
      unified_cloud_billing.total_usage_this_period: Cur. Period
      unified_cloud_billing.usage_percent_change: Change
    series_cell_visualizations:
      unified_cloud_billing.total_usage_prior_period:
        is_active: false
    conditional_formatting: []
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    stacking: normal
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
    y_axes: [{label: '', orientation: left, series: [{axisId: unified_cloud_billing.total_AWS_cost,
            id: unified_cloud_billing.total_AWS_cost, name: Total AWS Cost}, {axisId: unified_cloud_billing.total_azure_cost,
            id: unified_cloud_billing.total_azure_cost, name: Total Azure Cost}, {
            axisId: unified_cloud_billing.total_GCP_cost, id: unified_cloud_billing.total_GCP_cost,
            name: Total GCP Cost}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: unified_cloud_billing.total_usage_quantity,
            id: unified_cloud_billing.total_usage_quantity, name: Total Usage Quantity}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      unified_cloud_billing.total_cost: "#BDC1C6"
      unified_cloud_billing.total_azure_cost: "#00A2ED"
      unified_cloud_billing.total_AWS_cost: "#FF9900"
      unified_cloud_billing.total_GCP_cost: "#34A853"
    trend_lines: [{color: "#000000", label_position: right, order: 3, period: 7, regression_type: linear,
        series_index: 1, show_label: true}]
    show_null_points: false
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#5F6368"
    single_value_title: MoM
    value_format: ''
    defaults_version: 1
    hidden_fields: []
    value_labels: legend
    label_type: labPer
    up_color: false
    down_color: false
    total_color: false
    title_hidden: true
    listen:
      Timeframe: unified_cloud_billing.period
    row: 16
    col: 15
    width: 9
    height: 4
  - title: Rank 3 Resource
    name: Rank 3 Resource
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: single_value
    fields: [service.resource_project, cloud_provider.cloud_provider, unified_cloud_billing.resource_display,
      unified_cloud_billing.period_selected]
    filters:
      resource_rank.rank: '3'
      unified_cloud_billing.period_selected: "%This%"
    sorts: [service.resource_project]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#5F6368"
    value_format: ''
    conditional_formatting: []
    show_view_names: false
    defaults_version: 1
    series_types: {}
    hidden_fields: [cloud_provider.cloud_provider, service.resource_project, unified_cloud_billing.period_selected]
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    listen:
      Timeframe: unified_cloud_billing.period
    row: 8
    col: 2
    width: 5
    height: 2
  - title: '5'
    name: '5'
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: single_value
    fields: [resource_rank.rank]
    filters:
      unified_cloud_billing.period: Week
      resource_rank.rank: '5'
    sorts: [resource_rank.rank]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 16
    col: 0
    width: 2
    height: 2
  - title: Rank 3 Trend
    name: Rank 3 Trend
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: looker_line
    fields: [service.resource_project, cloud_provider.cloud_provider, unified_cloud_billing.total_cost_this_period,
      unified_cloud_billing.usage_start_date]
    filters:
      resource_rank.rank: '3'
      unified_cloud_billing.period_selected: "%This%"
    sorts: [unified_cloud_billing.total_cost_this_period desc]
    limit: 500
    column_limit: 50
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    y_axes: [{label: '', orientation: left, series: [{axisId: unified_cloud_billing.total_cost_this_period,
            id: unified_cloud_billing.total_cost_this_period, name: Total Cost This
              Period}], showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      unified_cloud_billing.total_cost_this_period: "#5F6368"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#5F6368"
    single_value_title: BILLED
    value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    conditional_formatting: []
    defaults_version: 1
    hidden_fields: [cloud_provider.cloud_provider, service.resource_project]
    title_hidden: true
    listen:
      Timeframe: unified_cloud_billing.period
    row: 10
    col: 2
    width: 5
    height: 2
  - title: Rank 3 Cost
    name: Rank 3 Cost
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: single_value
    fields: [service.resource_project, cloud_provider.cloud_provider, unified_cloud_billing.total_cost_this_period]
    filters:
      resource_rank.rank: '3'
    sorts: [unified_cloud_billing.total_cost_this_period desc]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#5F6368"
    single_value_title: BILLED
    value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    conditional_formatting: []
    show_view_names: false
    defaults_version: 1
    series_types: {}
    hidden_fields: [cloud_provider.cloud_provider, service.resource_project]
    listen:
      Timeframe: unified_cloud_billing.period
    row: 8
    col: 7
    width: 2
    height: 2
  - title: Rank 3 Usage
    name: Rank 3 Usage
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: looker_grid
    fields: [product_name.product_name, usage_unit_of_measure.usage_unit_of_measure,
      unified_cloud_billing.total_usage_prior_period, unified_cloud_billing.total_usage_this_period,
      unified_cloud_billing.usage_percent_change]
    filters:
      resource_rank.rank: '3'
      unified_cloud_billing.period_selected: "-NULL"
    sorts: [unified_cloud_billing.total_usage_prior_period desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '10'
    rows_font_size: '9'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: billing
      palette_id: billing-categorical-0
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      product_name.product_name: Product
      usage_unit_of_measure.usage_unit_of_measure: Unit
      unified_cloud_billing.total_usage_prior_period: Prev. Period
      unified_cloud_billing.total_usage_this_period: Cur. Period
      unified_cloud_billing.usage_percent_change: Change
    series_cell_visualizations:
      unified_cloud_billing.total_usage_prior_period:
        is_active: false
    conditional_formatting: []
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    stacking: normal
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
    y_axes: [{label: '', orientation: left, series: [{axisId: unified_cloud_billing.total_AWS_cost,
            id: unified_cloud_billing.total_AWS_cost, name: Total AWS Cost}, {axisId: unified_cloud_billing.total_azure_cost,
            id: unified_cloud_billing.total_azure_cost, name: Total Azure Cost}, {
            axisId: unified_cloud_billing.total_GCP_cost, id: unified_cloud_billing.total_GCP_cost,
            name: Total GCP Cost}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: unified_cloud_billing.total_usage_quantity,
            id: unified_cloud_billing.total_usage_quantity, name: Total Usage Quantity}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      unified_cloud_billing.total_cost: "#BDC1C6"
      unified_cloud_billing.total_azure_cost: "#00A2ED"
      unified_cloud_billing.total_AWS_cost: "#FF9900"
      unified_cloud_billing.total_GCP_cost: "#34A853"
    trend_lines: [{color: "#000000", label_position: right, order: 3, period: 7, regression_type: linear,
        series_index: 1, show_label: true}]
    show_null_points: false
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#5F6368"
    single_value_title: MoM
    value_format: ''
    defaults_version: 1
    hidden_fields: []
    value_labels: legend
    label_type: labPer
    up_color: false
    down_color: false
    total_color: false
    title_hidden: true
    listen:
      Timeframe: unified_cloud_billing.period
    row: 8
    col: 15
    width: 9
    height: 4
  - title: Rank 3 Change
    name: Rank 3 Change
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: single_value
    fields: [service.resource_project, cloud_provider.cloud_provider, unified_cloud_billing.cost_percent_change]
    filters:
      resource_rank.rank: '3'
    sorts: [unified_cloud_billing.cost_percent_change desc]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#5F6368"
    single_value_title: PoP
    value_format: ''
    conditional_formatting: [{type: less than, value: -0.1, background_color: '',
        font_color: "#478dff", color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: less
          than, value: -0.05, background_color: '', font_color: "#34A853", color_application: {
          collection_id: google, palette_id: google-diverging-0}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0.05, background_color: '',
        font_color: "#BEBEBE", color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: less
          than, value: 0.1, background_color: '', font_color: "#ffc003", color_application: {
          collection_id: google, palette_id: google-diverging-0}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: greater than, value: 0.1,
        background_color: '', font_color: "#b23627", color_application: {collection_id: google,
          palette_id: google-diverging-0}, bold: false, italic: false, strikethrough: false,
        fields: !!null ''}]
    show_view_names: false
    defaults_version: 1
    series_types: {}
    hidden_fields: [cloud_provider.cloud_provider, service.resource_project]
    value_labels: legend
    label_type: labPer
    listen:
      Timeframe: unified_cloud_billing.period
    row: 10
    col: 7
    width: 2
    height: 2
  - title: Rank 3 Breakdown
    name: Rank 3 Breakdown (2)
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: looker_bar
    fields: [service.resource_project, cloud_provider.cloud_provider, service_type.service_type,
      unified_cloud_billing.total_AWS_cost, unified_cloud_billing.total_azure_cost,
      unified_cloud_billing.total_GCP_cost, unified_cloud_billing.total_cost]
    filters:
      resource_rank.rank: '3'
      unified_cloud_billing.total_cost_this_period: ">0"
      unified_cloud_billing.period_selected: "%This%"
    sorts: [unified_cloud_billing.total_cost desc]
    limit: 500
    column_limit: 50
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
    totals_color: black
    color_application:
      collection_id: billing
      palette_id: billing-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: unified_cloud_billing.total_cost_this_period,
            id: unified_cloud_billing.total_cost_this_period, name: Total Cost This
              Period}], showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hide_legend: true
    label_value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    series_types: {}
    series_colors:
      unified_cloud_billing.total_AWS_cost: "#FF9900"
      unified_cloud_billing.total_azure_cost: "#00A2ED"
    value_labels: labels
    label_type: labPer
    inner_radius: 65
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#5F6368"
    single_value_title: BILLED
    value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    conditional_formatting: []
    defaults_version: 1
    hidden_fields: [cloud_provider.cloud_provider, service.resource_project, unified_cloud_billing.total_cost]
    title_hidden: true
    listen:
      Timeframe: unified_cloud_billing.period
    row: 8
    col: 9
    width: 6
    height: 4
  - title: 4 Icon
    name: 4 Icon
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: single_value
    fields: [resource_rank.rank, unified_cloud_billing.icon_display]
    filters:
      unified_cloud_billing.period: Week
      resource_rank.rank: '4'
    sorts: [resource_rank.rank]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    hidden_fields: [resource_rank.rank]
    listen: {}
    row: 14
    col: 0
    width: 2
    height: 2
  - title: 1 Icon
    name: 1 Icon
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: single_value
    fields: [resource_rank.rank, unified_cloud_billing.icon_display]
    filters:
      unified_cloud_billing.period: Week
      resource_rank.rank: '1'
    sorts: [resource_rank.rank]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    hidden_fields: [resource_rank.rank]
    listen: {}
    row: 2
    col: 0
    width: 2
    height: 2
  - title: 2 Icon
    name: 2 Icon
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: single_value
    fields: [resource_rank.rank, unified_cloud_billing.icon_display]
    filters:
      unified_cloud_billing.period: Week
      resource_rank.rank: '2'
    sorts: [resource_rank.rank]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    hidden_fields: [resource_rank.rank]
    listen: {}
    row: 6
    col: 0
    width: 2
    height: 2
  - title: 5 Icon
    name: 5 Icon
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: single_value
    fields: [resource_rank.rank, unified_cloud_billing.icon_display]
    filters:
      unified_cloud_billing.period: Week
      resource_rank.rank: '5'
    sorts: [resource_rank.rank]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    hidden_fields: [resource_rank.rank]
    listen: {}
    row: 18
    col: 0
    width: 2
    height: 2
  - title: 3 Icon
    name: 3 Icon
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    type: single_value
    fields: [resource_rank.rank, unified_cloud_billing.icon_display]
    filters:
      unified_cloud_billing.period: Week
      resource_rank.rank: '3'
    sorts: [resource_rank.rank]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    hidden_fields: [resource_rank.rank]
    listen: {}
    row: 10
    col: 0
    width: 2
    height: 2
  filters:
  - name: Timeframe
    title: Timeframe
    type: field_filter
    default_value: Quarter
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: marketplace_multicloud_billing_export
    explore: unified_cloud_billing
    listens_to_filters: []
    field: unified_cloud_billing.period