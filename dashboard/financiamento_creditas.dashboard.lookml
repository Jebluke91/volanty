- dashboard: financiamento_creditas
  title: Financiamento (Creditas)
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Porcentagem de Vendas com Financiamento
    name: Porcentagem de Vendas com Financiamento
    model: datalake
    explore: creditas_vendas
    type: Liquid_
    fields: [creditas_vendas.Financiamento, creditas_vendas.count]
    fill_fields: [creditas_vendas.Financiamento]
    filters:
      creditas_vendas.produto_venda: SELECIONADOS
    sorts: [percentage]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: 'round(${creditas_vendas.count}/sum(${creditas_vendas.count}),2)',
        label: Percentage, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: percentage, _type_hint: number}]
    hidden_fields: [creditas_vendas.count]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    showComparison: true
    minValue: 0
    maxValue: 1
    circleThickness: 0.05
    circleFillGap: 0.05
    circleColor: "#faf5ff"
    waveHeight: 0.05
    waveCount: 1
    waveRiseTime: 1000
    waveAnimateTime: 1800
    waveRise: true
    waveHeightScaling: true
    waveAnimate: true
    waveColor: "#3EB0D5"
    waveOffset: 0
    textVertPosition: 0.46
    textSize: 1
    valueCountUp: true
    displayPercent: true
    textColor: "#000000"
    waveTextColor: "#FFFFFF"
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    defaults_version: 0
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    query_fields:
      measures:
      - align: right
        can_filter: true
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Vendas Oficial Count
        label_from_parameter:
        label_short: Count
        map_layer:
        name: creditas_vendas.count
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: count
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: creditas_vendas
        view_label: Vendas Oficial
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Count
        measure: true
        parameter: false
        primary_key: false
        project_name: volanty
        scope: creditas_vendas
        suggest_dimension: creditas_vendas.count
        suggest_explore: creditas_vendas
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/volanty/files/views%2Fcreditas_vendas.view.lkml?line=306"
        permanent:
        source_file: views/creditas_vendas.view.lkml
        source_file_path: volanty/views/creditas_vendas.view.lkml
        sql: creditas_vendas.count
        sql_case:
        filters:
      dimensions:
      - align: left
        can_filter: true
        category: dimension
        default_filter_value:
        description:
        enumerations:
        - label: 'Yes'
          value: 'Yes'
        - label: 'No'
          value: 'No'
        field_group_label:
        fill_style: enumeration
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Vendas Oficial Financiamento (Yes / No)
        label_from_parameter:
        label_short: Financiamento (Yes / No)
        map_layer:
        name: creditas_vendas.Financiamento
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: yesno
        user_attribute_filter_types:
        - string
        - advanced_filter_string
        value_format:
        view: creditas_vendas
        view_label: Vendas Oficial
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Financiamento (Yes / No)
        measure: false
        parameter: false
        primary_key: false
        project_name: volanty
        scope: creditas_vendas
        suggest_dimension: creditas_vendas.Financiamento
        suggest_explore: creditas_vendas
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/volanty/files/views%2Fcreditas_vendas.view.lkml?line=275"
        permanent:
        source_file: views/creditas_vendas.view.lkml
        source_file_path: volanty/views/creditas_vendas.view.lkml
        sql: "${TABLE}.Financiamento "
        sql_case:
        filters:
      table_calculations:
      - label: Porcentagem
        name: porcentagem
        expression: round(${creditas_vendas.count}/sum(${creditas_vendas.count}),2)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "#,##0%"
        is_numeric: true
      pivots: []
    font_size: 12
    map: usa
    map_projection: ''
    groupBars: true
    labelSize: 10pt
    showLegend: true
    color_application: undefined
    listen: {}
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Vendas financiadas por mês
    name: Vendas financiadas por mês
    model: datalake
    explore: creditas_vendas
    type: looker_line
    fields: [creditas_vendas.count, creditas_vendas.Financiamento, creditas_vendas.data_vendido_month]
    pivots: [creditas_vendas.Financiamento]
    filters:
      creditas_vendas.data_vendido_month: NOT NULL
      creditas_vendas.count: NOT NULL
      creditas_vendas.Financiamento: ''
      creditas_vendas.produto_venda: SELECIONADOS
      creditas_vendas.data_vendido_date: 8 months
    sorts: [creditas_vendas.Financiamento desc, creditas_vendas.data_vendido_month desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${creditas_vendas.count}/sum(pivot_row(${creditas_vendas.count}))",
        label: Percent, value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        table_calculation: percent, _type_hint: number}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: percent, id: Yes - percent,
            name: 'Yes'}, {axisId: percent, id: No - percent, name: 'No'}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    hidden_series: [No - percent]
    hide_legend: true
    series_types: {}
    series_colors:
      No - percent: "#ffb2f0"
      Yes - percent: "#B1399E"
    swap_axes: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [creditas_vendas.count]
    listen: {}
    row: 6
    col: 16
    width: 8
    height: 6
  - title: Estado
    name: Estado
    model: datalake
    explore: creditas_vendas
    type: looker_pie
    fields: [creditas_vendas.uf_venda, creditas_vendas.count]
    filters:
      creditas_vendas.Financiamento: 'Yes'
      creditas_vendas.uf_venda: "-NULL"
      creditas_vendas.produto_venda: SELECIONADOS
      creditas_vendas.data_vendido_date: 8 months
    sorts: [creditas_vendas.count desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${creditas_vendas.count}/sum(${creditas_vendas.count})",
        label: Percentage, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: percentage, _type_hint: number}]
    value_labels: labels
    label_type: labVal
    inner_radius: 50
    series_colors:
      SP: "#592EC2"
      RJ: "#4276BE"
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
    hidden_fields: [creditas_vendas.count]
    show_null_points: true
    interpolation: linear
    listen: {}
    row: 6
    col: 0
    width: 8
    height: 6
  - title: Creditas Financiado
    name: Creditas Financiado
    model: datalake
    explore: creditas_vendas
    type: looker_pie
    fields: [creditas_vendas.count, percent_creditas]
    filters:
      creditas_vendas.Financiamento: 'Yes'
      creditas_vendas.uf_venda: "-NULL"
      creditas_vendas.data_vendido_date: 8 months
    sorts: [creditas_vendas.count desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: dimension, expression: 'if(${creditas_vendas.Banco}="CREDITAS","CREDITAS","OUTROS")',
        label: Percent Creditas, value_format: !!null '', value_format_name: Formatação
          padrão, dimension: percent_creditas, _kind_hint: dimension, _type_hint: string},
      {category: table_calculation, expression: "${creditas_vendas.count}/sum(${creditas_vendas.count})",
        label: Percentage, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: percentage, _type_hint: number}]
    value_labels: labels
    label_type: labVal
    inner_radius: 50
    series_colors:
      SP: "#592EC2"
      RJ: "#4276BE"
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
    hidden_fields: [creditas_vendas.count]
    listen: {}
    row: 6
    col: 8
    width: 8
    height: 6
  - title: Vendas financiadas por mês (Creditas)
    name: Vendas financiadas por mês (Creditas)
    model: datalake
    explore: creditas_vendas
    type: looker_line
    fields: [creditas_vendas.count, creditas_vendas.data_vendido_month]
    filters:
      creditas_vendas.data_vendido_month: NOT NULL
      creditas_vendas.Financiamento: 'Yes'
      creditas_vendas.produto_venda: SELECIONADOS
      creditas_vendas.data_vendido_date: 8 months
      creditas_vendas.fornecedor: Creditas
    sorts: [creditas_vendas.data_vendido_month desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: 'round(${creditas_vendas.count}/sum(${creditas_vendas.count}),2)',
        label: Percentage, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: percentage, _type_hint: number}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: percent, id: Yes - Coca
              Cola - percent, name: Yes - Coca Cola}, {axisId: percent, id: Yes -
              Creditas - percent, name: Yes - Creditas}, {axisId: percent, id: Yes
              - Itaú - percent, name: Yes - Itaú}, {axisId: percent, id: Yes - Localiza
              - percent, name: Yes - Localiza}, {axisId: percent, id: Yes - Maestro
              - percent, name: Yes - Maestro}, {axisId: percent, id: Yes - Movida
              - percent, name: Yes - Movida}, {axisId: percent, id: Yes - Ouro Verde
              - percent, name: Yes - Ouro Verde}, {axisId: percent, id: Yes - Porto
              Seguro - percent, name: Yes - Porto Seguro}, {axisId: percent, id: Yes
              - Recreio - percent, name: Yes - Recreio}, {axisId: percent, id: Yes
              - Splity - percent, name: Yes - Splity}, {axisId: percent, id: Yes -
              Terencio - percent, name: Yes - Terencio}, {axisId: percent, id: Yes
              - creditas_vendas.fornecedor___null - percent, name: Yes - ∅}, {axisId: percent,
            id: No - Coca Cola - percent, name: No - Coca Cola}, {axisId: percent,
            id: No - Creditas - percent, name: No - Creditas}, {axisId: percent, id: No
              - Itaú - percent, name: No - Itaú}, {axisId: percent, id: No - Localiza
              - percent, name: No - Localiza}, {axisId: percent, id: No - Maestro
              - percent, name: No - Maestro}, {axisId: percent, id: No - Movida -
              percent, name: No - Movida}, {axisId: percent, id: No - Ouro Verde -
              percent, name: No - Ouro Verde}, {axisId: percent, id: No - Porto Seguro
              - percent, name: No - Porto Seguro}, {axisId: percent, id: No - Splity
              - percent, name: No - Splity}, {axisId: percent, id: No - creditas_vendas.fornecedor___null
              - percent, name: No - ∅}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    hidden_series: [No - percent, Yes - Coca Cola - percent, Yes - creditas_vendas.fornecedor___null
        - percent, No - Coca Cola - percent, No - Creditas - percent, Yes - Localiza
        - percent, No - Itaú - percent, Yes - Itaú - percent, Yes - Maestro - percent,
      No - Localiza - percent, Yes - Movida - percent, No - Maestro - percent, No
        - Movida - percent, Yes - Porto Seguro - percent, Yes - Ouro Verde - percent,
      Yes - Recreio - percent, No - Porto Seguro - percent, No - Ouro Verde - percent,
      Yes - Splity - percent, No - Splity - percent, Yes - Terencio - percent, No
        - creditas_vendas.fornecedor___null - percent]
    hide_legend: true
    series_types: {}
    series_colors:
      No - percent: "#ffb2f0"
      Yes - Creditas - percent: "#C2DD67"
      percent_of_column_sum_of: "#C2DD67"
    swap_axes: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [creditas_vendas.count]
    listen: {}
    row: 0
    col: 16
    width: 8
    height: 6
  - title: Instituição Financeira
    name: Instituição Financeira
    model: datalake
    explore: creditas_vendas
    type: looker_column
    fields: [creditas_vendas.Banco, creditas_vendas.count]
    filters:
      creditas_vendas.Financiamento: 'Yes'
      creditas_vendas.produto_venda: SELECIONADOS
      creditas_vendas.data_vendido_date: 8 months
    sorts: [creditas_vendas.count desc]
    limit: 5
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${creditas_vendas.count}/sum(${creditas_vendas.count})",
        label: Percentage, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: percentage, _type_hint: number}]
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
    y_axes: [{label: Quantidade, orientation: left, series: [{axisId: percent_of_column_sum_of,
            id: percent_of_column_sum_of, name: Percent of column sum of}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}]
    hide_legend: true
    series_types:
      percent: line
    series_colors:
      creditas_vendas.count: "#B32F37"
      percent: "#592EC2"
      percent_of_column_sum_of: "#B32F37"
      percentage: "#B32F37"
    defaults_version: 1
    hidden_fields: [creditas_vendas.count]
    listen: {}
    row: 12
    col: 0
    width: 8
    height: 6
  - title: Modelo
    name: Modelo
    model: datalake
    explore: creditas_vendas
    type: looker_column
    fields: [creditas_vendas.modelo, creditas_vendas.count, percent_of_column_sum_of]
    filters:
      creditas_vendas.Financiamento: 'Yes'
      creditas_vendas.produto_venda: SELECIONADOS
      creditas_vendas.data_vendido_date: 8 months
    sorts: [creditas_vendas.count desc]
    limit: 5
    column_limit: 50
    dynamic_fields: [{args: [creditas_vendas.count], calculation_type: percent_of_column_sum,
        category: table_calculation, based_on: creditas_vendas.count, label: Percent
          of column sum of, source_field: creditas_vendas.count, table_calculation: percent_of_column_sum_of,
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
    y_axes: [{label: Quantidade, orientation: left, series: [{axisId: percent_of_column_sum_of,
            id: percent_of_column_sum_of, name: Percent of column sum of}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}]
    hide_legend: true
    series_types:
      percent: line
    series_colors:
      creditas_vendas.count: "#72D16D"
      percent_of_column_sum_of: "#72D16D"
    defaults_version: 1
    hidden_fields: [creditas_vendas.count]
    listen: {}
    row: 12
    col: 8
    width: 8
    height: 6
  - title: CAV
    name: CAV
    model: datalake
    explore: creditas_vendas
    type: looker_column
    fields: [creditas_vendas.cav_venda, creditas_vendas.count]
    filters:
      creditas_vendas.Financiamento: 'Yes'
      creditas_vendas.cav_venda: "-NULL"
      creditas_vendas.produto_venda: SELECIONADOS
      creditas_vendas.data_vendido_date: 8 months
    sorts: [creditas_vendas.count desc]
    limit: 5
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${creditas_vendas.count}/sum(${creditas_vendas.count})",
        label: Percentage, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: percentage, _type_hint: number}]
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
    y_axes: [{label: Percent, orientation: left, series: [{axisId: percent_of_column_sum_of,
            id: percent_of_column_sum_of, name: Percent of column sum of}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}]
    hidden_series: []
    hide_legend: true
    series_types:
      percent: line
    series_colors:
      creditas_vendas.count: "#FFD95F"
      percent_of_column_sum_of: "#FFD95F"
      percentage: "#FFD95F"
    defaults_version: 1
    hidden_fields: [creditas_vendas.count]
    listen: {}
    row: 12
    col: 16
    width: 8
    height: 6
  - title: Novo tile
    name: Novo tile
    model: datalake
    explore: creditas_vendas
    type: single_value
    fields: [creditas_vendas.Financiamento, creditas_vendas.count]
    fill_fields: [creditas_vendas.Financiamento]
    filters:
      creditas_vendas.produto_venda: SELECIONADOS
      creditas_vendas.data_vendido_date: 8 months
    sorts: [do_total_de_vendas]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: 'round(${creditas_vendas.count}/sum(${creditas_vendas.count}),2)',
        label: do total de vendas, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: do_total_de_vendas, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application: undefined
    single_value_title: vendas financiadas
    comparison_label: ''
    hidden_fields:
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    showComparison: true
    minValue: 0
    maxValue: 1
    circleThickness: 0.05
    circleFillGap: 0.05
    circleColor: "#faf5ff"
    waveHeight: 0.05
    waveCount: 1
    waveRiseTime: 1000
    waveAnimateTime: 1800
    waveRise: true
    waveHeightScaling: true
    waveAnimate: true
    waveColor: "#3EB0D5"
    waveOffset: 0
    textVertPosition: 0.46
    textSize: 1
    valueCountUp: true
    displayPercent: true
    textColor: "#000000"
    waveTextColor: "#FFFFFF"
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    query_fields:
      measures:
      - align: right
        can_filter: true
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Vendas Oficial Count
        label_from_parameter:
        label_short: Count
        map_layer:
        name: creditas_vendas.count
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: count
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: creditas_vendas
        view_label: Vendas Oficial
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Count
        measure: true
        parameter: false
        primary_key: false
        project_name: volanty
        scope: creditas_vendas
        suggest_dimension: creditas_vendas.count
        suggest_explore: creditas_vendas
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/volanty/files/views%2Fcreditas_vendas.view.lkml?line=306"
        permanent:
        source_file: views/creditas_vendas.view.lkml
        source_file_path: volanty/views/creditas_vendas.view.lkml
        sql: creditas_vendas.count
        sql_case:
        filters:
      dimensions:
      - align: left
        can_filter: true
        category: dimension
        default_filter_value:
        description:
        enumerations:
        - label: 'Yes'
          value: 'Yes'
        - label: 'No'
          value: 'No'
        field_group_label:
        fill_style: enumeration
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Vendas Oficial Financiamento (Yes / No)
        label_from_parameter:
        label_short: Financiamento (Yes / No)
        map_layer:
        name: creditas_vendas.Financiamento
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: yesno
        user_attribute_filter_types:
        - string
        - advanced_filter_string
        value_format:
        view: creditas_vendas
        view_label: Vendas Oficial
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Financiamento (Yes / No)
        measure: false
        parameter: false
        primary_key: false
        project_name: volanty
        scope: creditas_vendas
        suggest_dimension: creditas_vendas.Financiamento
        suggest_explore: creditas_vendas
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/volanty/files/views%2Fcreditas_vendas.view.lkml?line=275"
        permanent:
        source_file: views/creditas_vendas.view.lkml
        source_file_path: volanty/views/creditas_vendas.view.lkml
        sql: "${TABLE}.Financiamento "
        sql_case:
        filters:
      table_calculations:
      - label: Porcentagem
        name: porcentagem
        expression: round(${creditas_vendas.count}/sum(${creditas_vendas.count}),2)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "#,##0%"
        is_numeric: true
      pivots: []
    font_size: 12
    map: usa
    map_projection: ''
    groupBars: true
    labelSize: 10pt
    showLegend: true
    listen: {}
    row: 0
    col: 8
    width: 8
    height: 6
  - title: Vendas financiadas por financiadora
    name: Vendas financiadas por financiadora
    model: datalake
    explore: creditas_vendas
    type: looker_column
    fields: [creditas_vendas.data_vendido_month, creditas_vendas.count, creditas_vendas.Banco]
    pivots: [creditas_vendas.Banco]
    filters:
      creditas_vendas.data_vendido_month: NOT NULL
      creditas_vendas.count: ">4,NOT NULL"
      creditas_vendas.Financiamento: 'Yes'
      creditas_vendas.Banco: "-NULL"
      creditas_vendas.produto_venda: SELECIONADOS
      creditas_vendas.data_vendido_date: 8 months
    sorts: [creditas_vendas.data_vendido_month desc, creditas_vendas.Banco]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${creditas_vendas.count}/sum(pivot_row(${creditas_vendas.count}))",
        label: Percent, value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        table_calculation: percent, _type_hint: number, is_disabled: true}]
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
    legend_position: right
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
    y_axes: [{label: '', orientation: left, series: [{axisId: BRADESCO - percent,
            id: BRADESCO - percent, name: BRADESCO}, {axisId: CREDITAS - percent,
            id: CREDITAS - percent, name: CREDITAS}, {axisId: ITAU - percent, id: ITAU
              - percent, name: ITAU}, {axisId: SAFRA - percent, id: SAFRA - percent,
            name: SAFRA}, {axisId: SANTANDER - percent, id: SANTANDER - percent, name: SANTANDER}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hidden_series: [No - percent, No - Ouro Verde - percent, No - Splity - percent,
      No - creditas_vendas.fornecedor___null - percent, No - Coca Cola - percent, No
        - Porto Seguro - percent, No - Creditas - percent, No - Itaú - percent, No
        - Localiza - percent, No - Maestro - percent, No - Movida - percent, PG -
        percent]
    hide_legend: false
    series_types: {}
    series_colors:
      No - percent: "#ffb2f0"
      BRADESCO - percent: "#75E2E2"
      CREDITAS - percent: "#FBB555"
    series_labels:
      Yes - Coca Cola - percent: Coca Cola
      Yes - Creditas - percent: Creditas
      Yes - Itaú - percent: Itaú
      Yes - Localiza - percent: Localiza
      Yes - Maestro - percent: Maestro
      Yes - Movida - percent: Movida
      Yes - Ouro Verde - percent: Ouro Verde
      Yes - Porto Seguro - percent: Porto Seguro
      Yes - Recreio - percent: Recreio
      Yes - Splity - percent: Spilty
      Yes - Terencio - percent: Terencio
    swap_axes: false
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields:
    listen: {}
    row: 18
    col: 0
    width: 8
    height: 6
  - title: Marca
    name: Marca
    model: datalake
    explore: creditas_vendas
    type: looker_column
    fields: [creditas_vendas.marca, creditas_vendas.count]
    filters:
      creditas_vendas.Financiamento: 'Yes'
      creditas_vendas.count: ">10"
      creditas_vendas.produto_venda: SELECIONADOS
      creditas_vendas.data_vendido_date: 8 months
    sorts: [creditas_vendas.count desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${creditas_vendas.count}/sum(${creditas_vendas.count})",
        label: Percentage, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: percentage, _type_hint: number}]
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
    y_axes: [{label: Quantidade, orientation: left, series: [{axisId: creditas_vendas.count,
            id: creditas_vendas.count, name: Vendas Oficial}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: right, series: [{axisId: novo_calculo, id: novo_calculo,
            name: Novo cálculo}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    hide_legend: true
    series_types:
      novo_calculo: line
    series_colors:
      creditas_vendas.count: "#9174F0"
      percentage: "#9174F0"
    defaults_version: 1
    hidden_fields: [creditas_vendas.count]
    listen: {}
    row: 18
    col: 8
    width: 8
    height: 6
  - title: Ano do Modelo
    name: Ano do Modelo
    model: datalake
    explore: creditas_vendas
    type: looker_line
    fields: [creditas_vendas.ano_modelo, creditas_vendas.count]
    filters:
      creditas_vendas.Financiamento: 'Yes'
      creditas_vendas.produto_venda: SELECIONADOS
      creditas_vendas.data_vendido_date: 8 months
    sorts: [creditas_vendas.ano_modelo]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${creditas_vendas.count}/sum(${creditas_vendas.count})",
        label: Percentage, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: percentage, _type_hint: number}]
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
    y_axes: [{label: Quantidade, orientation: left, series: [{axisId: percent, id: percent,
            name: Percent}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      creditas_vendas.count: "#E57947"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [creditas_vendas.count]
    listen: {}
    row: 18
    col: 16
    width: 8
    height: 6
  - title: Detalhado
    name: Detalhado
    model: datalake
    explore: creditas_vendas
    type: looker_grid
    fields: [creditas_vendas.placa, creditas_vendas.ano_modelo, creditas_vendas.modelo,
      creditas_vendas.versao, creditas_vendas.cav_venda, creditas_vendas.data_vendido_date,
      creditas_vendas.Banco, creditas_vendas.preco_venda, creditas_vendas.preco_anuncio,
      creditas_vendas.uf_venda]
    filters:
      creditas_vendas.Financiamento: 'Yes'
      creditas_vendas.produto_venda: SELECIONADOS
      creditas_vendas.data_vendido_date: 8 months
    sorts: [creditas_vendas.data_vendido_date desc]
    limit: 500
    column_limit: 50
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_value_format:
      creditas_vendas.preco_venda: '"R$" 0.000,'
      creditas_vendas.preco_anuncio: '"R$" 0.000,'
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 24
    col: 0
    width: 24
    height: 7
