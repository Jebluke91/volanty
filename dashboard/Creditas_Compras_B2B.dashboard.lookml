- dashboard: sourcing_b2b
  title: Sourcing B2B
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: purchased cars
    name: purchased cars
    model: datalake
    explore: creditas_compras_b2_b
    type: single_value
    fields: [creditas_compras_b2_b.count]
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
    stacking: ''
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
    defaults_version: 1
    series_types: {}
    hidden_fields:
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
      Sale Month: creditas_compras_b2_b.sale_month
    row: 0
    col: 0
    width: 8
    height: 8
  - title: Year
    name: Year
    model: datalake
    explore: creditas_compras_b2_b
    type: looker_column
    fields: [creditas_compras_b2_b.year, creditas_compras_b2_b.count, percent_of_column_sum_of]
    sorts: [creditas_compras_b2_b.year]
    limit: 500
    dynamic_fields: [{args: [creditas_compras_b2_b.count], calculation_type: percent_of_column_sum,
        category: table_calculation, based_on: creditas_compras_b2_b.count, label: Percent
          of column sum of, source_field: creditas_compras_b2_b.count, table_calculation: percent_of_column_sum_of,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: percent_of_column_sum_of,
            id: percent_of_column_sum_of, name: Percent of column sum of}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      percent_of_column_sum_of: "#49E295"
    defaults_version: 1
    hidden_fields: [creditas_compras_b2_b.count]
    listen:
      Sale Month: creditas_compras_b2_b.sale_month
    row: 21
    col: 0
    width: 8
    height: 6
  - title: business partners
    name: business partners
    model: datalake
    explore: creditas_compras_b2_b
    type: single_value
    fields: [distinct_count]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Distinct Count,
        value_format: !!null '', value_format_name: !!null '', based_on: creditas_compras_b2_b.partner,
        _kind_hint: measure, measure: distinct_count, type: count_distinct, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Sale Month: creditas_compras_b2_b.sale_month
    row: 0
    col: 8
    width: 4
    height: 4
  - title: brands
    name: brands
    model: datalake
    explore: creditas_compras_b2_b
    type: single_value
    fields: [distinct_count]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Distinct Count,
        value_format: !!null '', value_format_name: !!null '', based_on: creditas_compras_b2_b.brand,
        _kind_hint: measure, measure: distinct_count, type: count_distinct, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    series_types: {}
    listen:
      Sale Month: creditas_compras_b2_b.sale_month
    row: 0
    col: 12
    width: 4
    height: 4
  - title: models
    name: models
    model: datalake
    explore: creditas_compras_b2_b
    type: single_value
    fields: [distinct_count]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Distinct Count,
        value_format: !!null '', value_format_name: !!null '', based_on: creditas_compras_b2_b.model,
        _kind_hint: measure, measure: distinct_count, type: count_distinct, _type_hint: number}]
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
    listen:
      Sale Month: creditas_compras_b2_b.sale_month
    row: 4
    col: 8
    width: 4
    height: 4
  - title: versions
    name: versions
    model: datalake
    explore: creditas_compras_b2_b
    type: single_value
    fields: [distinct_count]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Distinct Count,
        value_format: !!null '', value_format_name: !!null '', based_on: creditas_compras_b2_b.version,
        _kind_hint: measure, measure: distinct_count, type: count_distinct, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Sale Month: creditas_compras_b2_b.sale_month
    row: 4
    col: 12
    width: 4
    height: 4
  - title: Km per Month
    name: Km per Month
    model: datalake
    explore: creditas_compras_b2_b
    type: looker_line
    fields: [creditas_compras_b2_b.sale_month, km_average]
    fill_fields: [creditas_compras_b2_b.sale_month]
    sorts: [creditas_compras_b2_b.sale_month desc]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Km Average,
        value_format: !!null '', value_format_name: decimal_0, based_on: creditas_compras_b2_b.km,
        _kind_hint: measure, measure: km_average, type: average, _type_hint: number}]
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: km_average, id: km_average,
            name: Km Average}], showLabels: true, showValues: false, unpinAxis: true,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_colors:
      km_average: "#49E295"
    defaults_version: 1
    listen:
      Sale Month: creditas_compras_b2_b.sale_month
    row: 21
    col: 8
    width: 8
    height: 6
  - title: Unique models per month
    name: Unique models per month
    model: datalake
    explore: creditas_compras_b2_b
    type: looker_line
    fields: [creditas_compras_b2_b.sale_month, distinct_count_model]
    fill_fields: [creditas_compras_b2_b.sale_month]
    sorts: [creditas_compras_b2_b.sale_month desc]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Distinct Count
          Model, value_format: !!null '', value_format_name: !!null '', based_on: creditas_compras_b2_b.model,
        _kind_hint: measure, measure: distinct_count_model, type: count_distinct,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    y_axes: [{label: Quantity, orientation: left, series: [{axisId: distinct_count_model,
            id: distinct_count_model, name: Distinct Count Model}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    font_size: '16'
    series_colors:
      distinct_count_model: "#49E295"
    defaults_version: 1
    listen:
      Sale Month: creditas_compras_b2_b.sale_month
    row: 27
    col: 0
    width: 8
    height: 6
  - title: Unique partners per month
    name: Unique partners per month
    model: datalake
    explore: creditas_compras_b2_b
    type: looker_line
    fields: [creditas_compras_b2_b.sale_month, distinct_count_partner]
    fill_fields: [creditas_compras_b2_b.sale_month]
    filters: {}
    sorts: [creditas_compras_b2_b.sale_month desc]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Distinct Count
          Partner, value_format: !!null '', value_format_name: !!null '', based_on: creditas_compras_b2_b.partner,
        _kind_hint: measure, measure: distinct_count_partner, type: count_distinct,
        _type_hint: number}]
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    y_axes: [{label: Quantity, orientation: left, series: [{axisId: distinct_count_partner,
            id: distinct_count_partner, name: Distinct Count Partner}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    font_size: '16'
    series_colors:
      distinct_count_partner: "#49E295"
    defaults_version: 1
    listen:
      Sale Month: creditas_compras_b2_b.sale_month
    row: 33
    col: 0
    width: 8
    height: 6
  - title: Models
    name: Models
    model: datalake
    explore: creditas_compras_b2_b
    type: looker_wordcloud
    fields: [creditas_compras_b2_b.model, creditas_compras_b2_b.count]
    sorts: [creditas_compras_b2_b.count desc]
    limit: 500
    color_application: undefined
    series_types: {}
    defaults_version: 1
    listen:
      Sale Month: creditas_compras_b2_b.sale_month
    row: 8
    col: 8
    width: 8
    height: 7
  - title: Business Partners
    name: Business Partners
    model: datalake
    explore: creditas_compras_b2_b
    type: looker_wordcloud
    fields: [creditas_compras_b2_b.partner, creditas_compras_b2_b.count]
    sorts: [creditas_compras_b2_b.count desc]
    limit: 500
    color_application: undefined
    series_types: {}
    defaults_version: 1
    listen:
      Sale Month: creditas_compras_b2_b.sale_month
    row: 8
    col: 0
    width: 8
    height: 7
  - title: Partner
    name: Partner
    model: datalake
    explore: creditas_compras_b2_b
    type: looker_column
    fields: [creditas_compras_b2_b.partner, creditas_compras_b2_b.count, percent_of_column_sum_of]
    sorts: [creditas_compras_b2_b.count desc]
    limit: 5
    dynamic_fields: [{args: [creditas_compras_b2_b.count], calculation_type: percent_of_column_sum,
        category: table_calculation, based_on: creditas_compras_b2_b.count, label: Percent
          of column sum of, source_field: creditas_compras_b2_b.count, table_calculation: percent_of_column_sum_of,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: percent_of_column_sum_of,
            id: percent_of_column_sum_of, name: Percent of column sum of}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      percent_of_column_sum_of: "#49E295"
    defaults_version: 1
    hidden_fields: [creditas_compras_b2_b.count]
    listen:
      Sale Month: creditas_compras_b2_b.sale_month
    row: 15
    col: 0
    width: 8
    height: 6
  - title: Model
    name: Model
    model: datalake
    explore: creditas_compras_b2_b
    type: looker_column
    fields: [creditas_compras_b2_b.model, creditas_compras_b2_b.count, percent_of_column_sum_of]
    sorts: [creditas_compras_b2_b.count desc]
    limit: 10
    dynamic_fields: [{args: [creditas_compras_b2_b.count], calculation_type: percent_of_column_sum,
        category: table_calculation, based_on: creditas_compras_b2_b.count, label: Percent
          of column sum of, source_field: creditas_compras_b2_b.count, table_calculation: percent_of_column_sum_of,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: percent_of_column_sum_of,
            id: percent_of_column_sum_of, name: Percent of column sum of}], showLabels: false,
        showValues: true, unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      percent_of_column_sum_of: "#49E295"
    defaults_version: 1
    hidden_fields: [creditas_compras_b2_b.count]
    listen:
      Sale Month: creditas_compras_b2_b.sale_month
    row: 15
    col: 8
    width: 8
    height: 6
  - title: Fipe
    name: Fipe
    model: datalake
    explore: creditas_compras_b2_b
    type: looker_column
    fields: [creditas_compras_b2_b.sale_month, media_de_percentage_of_fipe]
    sorts: [creditas_compras_b2_b.sale_month]
    limit: 500
    dynamic_fields: [{category: dimension, expression: "${creditas_compras_b2_b.sale_price}/${creditas_compras_b2_b.fipe_price}",
        label: Percentage of Fipe, value_format: !!null '', value_format_name: percent_0,
        dimension: percentage_of_fipe_1, _kind_hint: dimension, _type_hint: number},
      {measure: media_de_percentage_of_fipe, based_on: percentage_of_fipe_1, expression: '',
        label: Média de Percentage of Fipe, type: average, _kind_hint: measure, _type_hint: number}]
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: media_de_percentage_of_fipe,
            id: media_de_percentage_of_fipe, name: Média de Percentage of Fipe}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      media_de_percentage_of_fipe: "#49E295"
    show_null_points: true
    interpolation: linear
    hidden_fields: []
    defaults_version: 1
    listen:
      Sale Month: creditas_compras_b2_b.sale_month
    row: 27
    col: 8
    width: 8
    height: 6
  - title: Km tracks
    name: Km tracks
    model: datalake
    explore: creditas_compras_b2_b
    type: looker_area
    fields: [creditas_compras_b2_b.count, faixas_de_km, percent_of_column_sum_of, creditas_compras_b2_b.sale_month]
    pivots: [faixas_de_km]
    fill_fields: [creditas_compras_b2_b.sale_month]
    sorts: [faixas_de_km, creditas_compras_b2_b.sale_month]
    limit: 500
    dynamic_fields: [{category: dimension, expression: "if(${creditas_compras_b2_b.km}<10000,10000,\n\
          \  if(${creditas_compras_b2_b.km}<20000, 20000,\n    if(${creditas_compras_b2_b.km}<30000,\
          \ 30000,\n      if(${creditas_compras_b2_b.km}<40000, 40000,\n        if(${creditas_compras_b2_b.km}<5000,\
          \ 50000,\n          if(${creditas_compras_b2_b.km}<60000, 60000,\n            if(${creditas_compras_b2_b.km}<70000,\
          \ 70000, if(${creditas_compras_b2_b.km}<80000, 80000, if(${creditas_compras_b2_b.km}<90000,\
          \ 90000, if(${creditas_compras_b2_b.km}>90000, 10000,10000))))))))))", label: Faixas
          de km, value_format: !!null '', value_format_name: !!null '', dimension: faixas_de_km,
        _kind_hint: dimension, _type_hint: number}, {args: [creditas_compras_b2_b.count],
        calculation_type: percent_of_column_sum, category: table_calculation, based_on: creditas_compras_b2_b.count,
        label: Percent of column sum of, source_field: creditas_compras_b2_b.count, table_calculation: percent_of_column_sum_of,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: 10000 - percent_of_column_sum_of,
            id: 10000 - percent_of_column_sum_of, name: '10,000'}, {axisId: 20000
              - percent_of_column_sum_of, id: 20000 - percent_of_column_sum_of, name: '20,000'},
          {axisId: 30000 - percent_of_column_sum_of, id: 30000 - percent_of_column_sum_of,
            name: '30,000'}, {axisId: 40000 - percent_of_column_sum_of, id: 40000
              - percent_of_column_sum_of, name: '40,000'}, {axisId: 60000 - percent_of_column_sum_of,
            id: 60000 - percent_of_column_sum_of, name: '60,000'}, {axisId: 70000
              - percent_of_column_sum_of, id: 70000 - percent_of_column_sum_of, name: '70,000'},
          {axisId: 80000 - percent_of_column_sum_of, id: 80000 - percent_of_column_sum_of,
            name: '80,000'}, {axisId: 90000 - percent_of_column_sum_of, id: 90000
              - percent_of_column_sum_of, name: '90,000'}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    hidden_fields: [creditas_compras_b2_b.count]
    listen:
      Sale Month: creditas_compras_b2_b.sale_month
    row: 33
    col: 8
    width: 8
    height: 6
  - title: Model year tracks
    name: Model year tracks
    model: datalake
    explore: creditas_compras_b2_b
    type: looker_area
    fields: [creditas_compras_b2_b.count, percent_of_column_sum_of, creditas_compras_b2_b.sale_month,
      creditas_compras_b2_b.year]
    pivots: [creditas_compras_b2_b.year]
    fill_fields: [creditas_compras_b2_b.sale_month]
    sorts: [creditas_compras_b2_b.sale_month, creditas_compras_b2_b.year]
    limit: 500
    dynamic_fields: [{args: [creditas_compras_b2_b.count], calculation_type: percent_of_column_sum,
        category: table_calculation, based_on: creditas_compras_b2_b.count, label: Percent
          of column sum of, source_field: creditas_compras_b2_b.count, table_calculation: percent_of_column_sum_of,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: 10000 - percent_of_column_sum_of,
            id: 10000 - percent_of_column_sum_of, name: '10,000'}, {axisId: 20000
              - percent_of_column_sum_of, id: 20000 - percent_of_column_sum_of, name: '20,000'},
          {axisId: 30000 - percent_of_column_sum_of, id: 30000 - percent_of_column_sum_of,
            name: '30,000'}, {axisId: 40000 - percent_of_column_sum_of, id: 40000
              - percent_of_column_sum_of, name: '40,000'}, {axisId: 60000 - percent_of_column_sum_of,
            id: 60000 - percent_of_column_sum_of, name: '60,000'}, {axisId: 70000
              - percent_of_column_sum_of, id: 70000 - percent_of_column_sum_of, name: '70,000'},
          {axisId: 80000 - percent_of_column_sum_of, id: 80000 - percent_of_column_sum_of,
            name: '80,000'}, {axisId: 90000 - percent_of_column_sum_of, id: 90000
              - percent_of_column_sum_of, name: '90,000'}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    hidden_fields: [creditas_compras_b2_b.count]
    listen:
      Sale Month: creditas_compras_b2_b.sale_month
    row: 39
    col: 0
    width: 8
    height: 6
  - title: Km tracks (Copiar)
    name: Km tracks (Copiar)
    model: datalake
    explore: creditas_compras_b2_b
    type: looker_column
    fields: [creditas_compras_b2_b.count, creditas_compras_b2_b.sale_month, faixas_de_km]
    pivots: [faixas_de_km]
    fill_fields: [creditas_compras_b2_b.sale_month]
    filters:
      faixas_de_km: "<180000"
    sorts: [creditas_compras_b2_b.sale_month, faixas_de_km]
    limit: 500
    dynamic_fields: [{category: dimension, expression: "\n    if(${creditas_compras_b2_b.km}<30000,\
          \ 30000,\n      \n          if(${creditas_compras_b2_b.km}<60000, 60000,\n     \
          \      if(${creditas_compras_b2_b.km}<90000, 90000, \n            if(${creditas_compras_b2_b.km}<120000,\
          \ 120000,200000))))", label: Faixas de km, value_format: !!null '', value_format_name: !!null '',
        dimension: faixas_de_km, _kind_hint: dimension, _type_hint: number}, {args: [
          creditas_compras_b2_b.count], calculation_type: percent_of_column_sum, category: table_calculation,
        based_on: creditas_compras_b2_b.count, label: Percent of column sum of, source_field: creditas_compras_b2_b.count,
        table_calculation: percent_of_column_sum_of, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, _type_hint: number, is_disabled: true}]
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 471a8295-662d-46fc-bd2d-2d0acd370c1e
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: 10000 - percent_of_column_sum_of,
            id: 10000 - percent_of_column_sum_of, name: '10,000'}, {axisId: 20000
              - percent_of_column_sum_of, id: 20000 - percent_of_column_sum_of, name: '20,000'},
          {axisId: 30000 - percent_of_column_sum_of, id: 30000 - percent_of_column_sum_of,
            name: '30,000'}, {axisId: 40000 - percent_of_column_sum_of, id: 40000
              - percent_of_column_sum_of, name: '40,000'}, {axisId: 60000 - percent_of_column_sum_of,
            id: 60000 - percent_of_column_sum_of, name: '60,000'}, {axisId: 70000
              - percent_of_column_sum_of, id: 70000 - percent_of_column_sum_of, name: '70,000'},
          {axisId: 80000 - percent_of_column_sum_of, id: 80000 - percent_of_column_sum_of,
            name: '80,000'}, {axisId: 90000 - percent_of_column_sum_of, id: 90000
              - percent_of_column_sum_of, name: '90,000'}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields:
    hidden_series: [200000 - creditas_compras_b2_b.count]
    listen:
      Sale Month: creditas_compras_b2_b.sale_month
    row: 45
    col: 0
    width: 8
    height: 6
  - title: Model year tracks
    name: Model year tracks (2)
    model: datalake
    explore: creditas_compras_b2_b
    type: looker_column
    fields: [creditas_compras_b2_b.count, creditas_compras_b2_b.sale_month, ano]
    pivots: [ano]
    fill_fields: [creditas_compras_b2_b.sale_month]
    sorts: [creditas_compras_b2_b.count desc 0, ano]
    limit: 500
    dynamic_fields: [{args: [creditas_compras_b2_b.count], calculation_type: percent_of_column_sum,
        category: table_calculation, based_on: creditas_compras_b2_b.count, label: Percent
          of column sum of, source_field: creditas_compras_b2_b.count, table_calculation: percent_of_column_sum_of,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number, is_disabled: true}, {category: dimension, expression: "if(${creditas_compras_b2_b.year}<=2015,\"\
          Ate_2015\",\n  if(${creditas_compras_b2_b.year}<=2018,\"Ate_2018\",\n  \"Ate_2021\"\
          ))\n ", label: Ano, value_format: !!null '', value_format_name: !!null '',
        dimension: ano, _kind_hint: measure, _type_hint: string}]
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: ccba75a3-58c7-4b9c-a931-4ffc59e79cba
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: 10000 - percent_of_column_sum_of,
            id: 10000 - percent_of_column_sum_of, name: '10,000'}, {axisId: 20000
              - percent_of_column_sum_of, id: 20000 - percent_of_column_sum_of, name: '20,000'},
          {axisId: 30000 - percent_of_column_sum_of, id: 30000 - percent_of_column_sum_of,
            name: '30,000'}, {axisId: 40000 - percent_of_column_sum_of, id: 40000
              - percent_of_column_sum_of, name: '40,000'}, {axisId: 60000 - percent_of_column_sum_of,
            id: 60000 - percent_of_column_sum_of, name: '60,000'}, {axisId: 70000
              - percent_of_column_sum_of, id: 70000 - percent_of_column_sum_of, name: '70,000'},
          {axisId: 80000 - percent_of_column_sum_of, id: 80000 - percent_of_column_sum_of,
            name: '80,000'}, {axisId: 90000 - percent_of_column_sum_of, id: 90000
              - percent_of_column_sum_of, name: '90,000'}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields:
    listen:
      Sale Month: creditas_compras_b2_b.sale_month
    row: 51
    col: 0
    width: 8
    height: 6
  - title: 'Partner por Mês '
    name: 'Partner por Mês '
    model: datalake
    explore: creditas_compras_b2_b
    type: looker_column
    fields: [creditas_compras_b2_b.count, creditas_compras_b2_b.sale_month, parceiros]
    pivots: [creditas_compras_b2_b.sale_month]
    sorts: [creditas_compras_b2_b.count desc 0, creditas_compras_b2_b.sale_month]
    limit: 500
    dynamic_fields: [{args: [creditas_compras_b2_b.count], calculation_type: percent_of_column_sum,
        category: table_calculation, based_on: creditas_compras_b2_b.count, label: Percent
          of column sum of, source_field: creditas_compras_b2_b.count, table_calculation: percent_of_column_sum_of,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number, is_disabled: true}, {category: dimension, expression: "\n\
          if(${creditas_compras_b2_b.partner}=\"A REVENDA\",\"A REVENDA\",\nif(${creditas_compras_b2_b.partner}=\"\
          LOCALIZA\",\"LOCALIZA\",\nif(${creditas_compras_b2_b.partner}=\"LOOP\",\"LOOP\"\
          ,\nif(${creditas_compras_b2_b.partner}=\"MOVIDA\",\"MOVIDA\",\nif(${creditas_compras_b2_b.partner}=\"\
          PORTO SEGURO\",\"PORTO SEGURO\",\nif(${creditas_compras_b2_b.partner}=\"UNIDAS\"\
          ,\"UNIDAS\",\nif(${creditas_compras_b2_b.partner}=\"VENDA DIRETA\",\"VENDA DIRETA\"\
          ,\"OUTROS\")))))))", label: Parceiros, value_format: !!null '', value_format_name: !!null '',
        dimension: parceiros, _kind_hint: dimension, _type_hint: string}]
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 471a8295-662d-46fc-bd2d-2d0acd370c1e
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: percent_of_column_sum_of,
            id: percent_of_column_sum_of, name: Percent of column sum of}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors: {}
    defaults_version: 1
    hidden_fields:
    show_null_points: true
    interpolation: linear
    listen:
      Sale Month: creditas_compras_b2_b.sale_month
    row: 57
    col: 0
    width: 23
    height: 6
  - title: Unique partners per month (Copiar)
    name: Unique partners per month (Copiar)
    model: datalake
    explore: creditas_compras_b2_b
    type: looker_line
    fields: [creditas_compras_b2_b.sale_month, distinct_count_partner]
    fill_fields: [creditas_compras_b2_b.sale_month]
    sorts: [creditas_compras_b2_b.sale_month desc]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Distinct Count
          Partner, value_format: !!null '', value_format_name: !!null '', based_on: creditas_compras_b2_b.partner,
        _kind_hint: measure, measure: distinct_count_partner, type: count_distinct,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Quantity, orientation: left, series: [{axisId: distinct_count_partner,
            id: distinct_count_partner, name: Distinct Count Partner}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_colors:
      distinct_count_partner: "#49E295"
    defaults_version: 1
    listen:
      Sale Month: creditas_compras_b2_b.sale_month
    row: 63
    col: 0
    width: 8
    height: 6
  - title: Marcas
    name: Marcas
    model: datalake
    explore: creditas_compras_b2_b
    type: looker_wordcloud
    fields: [creditas_compras_b2_b.count, creditas_compras_b2_b.brand]
    sorts: [creditas_compras_b2_b.count desc]
    limit: 500
    color_application: undefined
    series_types: {}
    defaults_version: 1
    listen:
      Sale Month: creditas_compras_b2_b.sale_month
    row: 69
    col: 0
    width: 8
    height: 6
  - title: ''
    name: ''
    model: datalake
    explore: creditas_compras_b2_b
    type: looker_line
    fields: [creditas_compras_b2_b.count, creditas_compras_b2_b.sale_month]
    fill_fields: [creditas_compras_b2_b.sale_month]
    filters: {}
    sorts: [creditas_compras_b2_b.sale_month desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: creditas_compras_b2_b.count,
            id: creditas_compras_b2_b.count, name: Creditas B2 B}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    font_size: '16'
    series_types: {}
    series_colors:
      creditas_compras_b2_b.count: "#72D16D"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields:
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
      Sale Month: creditas_compras_b2_b.sale_month
    row: 75
    col: 0
    width: 8
    height: 6
  - title: Partner (Copiar)
    name: Partner (Copiar)
    model: datalake
    explore: creditas_compras_b2_b
    type: looker_grid
    fields: [creditas_compras_b2_b.count, creditas_compras_b2_b.sale_month, parceiros]
    pivots: [creditas_compras_b2_b.sale_month]
    fill_fields: [creditas_compras_b2_b.sale_month]
    filters:
      creditas_compras_b2_b.partner: ''
    sorts: [creditas_compras_b2_b.count desc 2, creditas_compras_b2_b.sale_month]
    limit: 500
    total: true
    dynamic_fields: [{args: [creditas_compras_b2_b.count], calculation_type: percent_of_column_sum,
        category: table_calculation, based_on: creditas_compras_b2_b.count, label: Percent
          of column sum of, source_field: creditas_compras_b2_b.count, table_calculation: percent_of_column_sum_of,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number, is_disabled: true}, {category: dimension, expression: "\n\
          if(${creditas_compras_b2_b.partner}=\"A REVENDA\",\"A REVENDA\",\nif(${creditas_compras_b2_b.partner}=\"\
          LOCALIZA\",\"LOCALIZA\",\nif(${creditas_compras_b2_b.partner}=\"LOOP\",\"LOOP\"\
          ,\nif(${creditas_compras_b2_b.partner}=\"MOVIDA\",\"MOVIDA\",\nif(${creditas_compras_b2_b.partner}=\"\
          PORTO SEGURO\",\"PORTO SEGURO\",\nif(${creditas_compras_b2_b.partner}=\"UNIDAS\"\
          ,\"UNIDAS\",\nif(${creditas_compras_b2_b.partner}=\"VENDA DIRETA\",\"VENDA DIRETA\"\
          ,\"OUTROS\")))))))", label: Parceiros, value_format: !!null '', value_format_name: !!null '',
        dimension: parceiros, _kind_hint: measure, _type_hint: string}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: percent_of_column_sum_of,
            id: percent_of_column_sum_of, name: Percent of column sum of}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    stacking: percent
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      percent_of_column_sum_of: "#49E295"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields:
    listen:
      Sale Month: creditas_compras_b2_b.sale_month
    row: 87
    col: 0
    width: 8
    height: 6
  - title: Model year tracks 2
    name: Model year tracks 2
    model: datalake
    explore: creditas_compras_b2_b
    type: looker_grid
    fields: [creditas_compras_b2_b.count, creditas_compras_b2_b.year, creditas_compras_b2_b.sale_month]
    pivots: [creditas_compras_b2_b.year]
    fill_fields: [creditas_compras_b2_b.sale_month]
    sorts: [creditas_compras_b2_b.sale_month desc 0, creditas_compras_b2_b.year]
    limit: 500
    row_total: right
    dynamic_fields: [{args: [creditas_compras_b2_b.count], calculation_type: percent_of_column_sum,
        category: table_calculation, based_on: creditas_compras_b2_b.count, label: Percent
          of column sum of, source_field: creditas_compras_b2_b.count, table_calculation: percent_of_column_sum_of,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number, is_disabled: true}, {category: dimension, expression: "if(${creditas_compras_b2_b.year}<=2015,\"\
          Ate_2015\",\n  if(${creditas_compras_b2_b.year}<=2018,\"Ate_2018\",\n  \"Ate_2021\"\
          ))\n ", label: Ano, value_format: !!null '', value_format_name: !!null '',
        dimension: ano, _kind_hint: measure, _type_hint: string}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    stacking: percent
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: ccba75a3-58c7-4b9c-a931-4ffc59e79cba
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: 10000 - percent_of_column_sum_of,
            id: 10000 - percent_of_column_sum_of, name: '10,000'}, {axisId: 20000
              - percent_of_column_sum_of, id: 20000 - percent_of_column_sum_of, name: '20,000'},
          {axisId: 30000 - percent_of_column_sum_of, id: 30000 - percent_of_column_sum_of,
            name: '30,000'}, {axisId: 40000 - percent_of_column_sum_of, id: 40000
              - percent_of_column_sum_of, name: '40,000'}, {axisId: 60000 - percent_of_column_sum_of,
            id: 60000 - percent_of_column_sum_of, name: '60,000'}, {axisId: 70000
              - percent_of_column_sum_of, id: 70000 - percent_of_column_sum_of, name: '70,000'},
          {axisId: 80000 - percent_of_column_sum_of, id: 80000 - percent_of_column_sum_of,
            name: '80,000'}, {axisId: 90000 - percent_of_column_sum_of, id: 90000
              - percent_of_column_sum_of, name: '90,000'}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields:
    listen:
      Sale Month: creditas_compras_b2_b.sale_month
    row: 81
    col: 0
    width: 13
    height: 6
  - title: Model (Copiar)
    name: Model (Copiar)
    model: datalake
    explore: creditas_compras_b2_b
    type: looker_grid
    fields: [creditas_compras_b2_b.model, creditas_compras_b2_b.count, creditas_compras_b2_b.sale_month]
    pivots: [creditas_compras_b2_b.sale_month]
    fill_fields: [creditas_compras_b2_b.sale_month]
    sorts: [creditas_compras_b2_b.count desc 0, creditas_compras_b2_b.sale_month]
    limit: 500
    row_total: right
    dynamic_fields: [{args: [creditas_compras_b2_b.count], calculation_type: percent_of_column_sum,
        category: table_calculation, based_on: creditas_compras_b2_b.count, label: Percent
          of column sum of, source_field: creditas_compras_b2_b.count, table_calculation: percent_of_column_sum_of,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number, is_disabled: true}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: percent_of_column_sum_of,
            id: percent_of_column_sum_of, name: Percent of column sum of}], showLabels: false,
        showValues: true, unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      percent_of_column_sum_of: "#49E295"
    defaults_version: 1
    hidden_fields:
    listen:
      Sale Month: creditas_compras_b2_b.sale_month
    row: 93
    col: 0
    width: 12
    height: 6
  - title: Concentracão de Modelos
    name: Concentracão de Modelos
    model: datalake
    explore: creditas_compras_b2_b
    type: looker_column
    fields: [creditas_compras_b2_b.count, nova_dimensao, creditas_compras_b2_b.sale_month]
    pivots: [nova_dimensao]
    fill_fields: [creditas_compras_b2_b.sale_month]
    filters: {}
    sorts: [nova_dimensao desc, creditas_compras_b2_b.sale_month desc]
    limit: 500
    dynamic_fields: [{args: [creditas_compras_b2_b.count], calculation_type: percent_of_column_sum,
        category: table_calculation, based_on: creditas_compras_b2_b.count, label: Percent
          of column sum of, source_field: creditas_compras_b2_b.count, table_calculation: percent_of_column_sum_of,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number, is_disabled: true}, {category: dimension, expression: "if(${creditas_compras_b2_b.model}=\"\
          LOGAN\",\"Sim\",\nif(${creditas_compras_b2_b.model}=\"MOBI\",\"Sim\",\nif(${creditas_compras_b2_b.model}=\"\
          ONIX\",\"Sim\",\nif(${creditas_compras_b2_b.model}=\"SANDERO\",\"Sim\",\nif(${creditas_compras_b2_b.model}=\"\
          KWID\",\"Sim\",\nif(${creditas_compras_b2_b.model}=\"HB20\",\"Sim\",\nif(${creditas_compras_b2_b.model}=\"\
          HB20S\",\"Sim\",\nif(${creditas_compras_b2_b.model}=\"PRISMA\",\"Sim\",\nif(${creditas_compras_b2_b.model}=\"\
          GOL\",\"Sim\",\nif(${creditas_compras_b2_b.model}=\"ARGO\",\"Sim\",\"Não\"))))))))))",
        label: Nova dimensão, value_format: !!null '', value_format_name: !!null '',
        dimension: nova_dimensao, _kind_hint: dimension, _type_hint: string}]
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
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: afd46b40-e939-4ace-bffd-69d1bb16ee05
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: Sim - creditas_compras_b2_b.count,
            id: Sim - creditas_compras_b2_b.count, name: Sim}, {axisId: Não - creditas_compras_b2_b.count,
            id: Não - creditas_compras_b2_b.count, name: Não}], showLabels: false, showValues: false,
        unpinAxis: true, tickDensity: default, tickDensityCustom: 5, type: linear}]
    hidden_series: []
    series_types: {}
    series_colors:
      Sim - creditas_compras_b2_b.count: "#5bff9a"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields:
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Sale Month: creditas_compras_b2_b.sale_month
    row: 99
    col: 0
    width: 8
    height: 6
  - title: Model (Copiar 2)
    name: Model (Copiar 2)
    model: datalake
    explore: creditas_compras_b2_b
    type: looker_column
    fields: [creditas_compras_b2_b.model, creditas_compras_b2_b.count, percent_of_column_sum_of]
    sorts: [creditas_compras_b2_b.count desc]
    limit: 10
    dynamic_fields: [{args: [creditas_compras_b2_b.count], calculation_type: percent_of_column_sum,
        category: table_calculation, based_on: creditas_compras_b2_b.count, label: Percent
          of column sum of, source_field: creditas_compras_b2_b.count, table_calculation: percent_of_column_sum_of,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: percent_of_column_sum_of,
            id: percent_of_column_sum_of, name: Percent of column sum of}], showLabels: false,
        showValues: true, unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      percent_of_column_sum_of: "#49E295"
    defaults_version: 1
    hidden_fields: [creditas_compras_b2_b.count]
    listen:
      Sale Month: creditas_compras_b2_b.sale_month
    row: 105
    col: 0
    width: 8
    height: 6
  filters:
  - name: Sale Month
    title: Sale Month
    type: field_filter
    default_value: 3 month
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: datalake
    explore: creditas_compras_b2_b
    listens_to_filters: []
    field: creditas_compras_b2_b.sale_month
