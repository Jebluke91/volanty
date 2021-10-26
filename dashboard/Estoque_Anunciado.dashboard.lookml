- dashboard: estoque_no_site
  title: Estoque no Site
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Estoque Detalhado
    name: Estoque Detalhado
    model: Creditas_Volanty_Volanty
    explore: estoque_anunciado
    type: looker_grid
    fields: [estoque_anunciado.placa, estoque_anunciado.marca, estoque_anunciado.modelo,
      estoque_anunciado.versao, estoque_anunciado.qtd_leads, estoque_anunciado.qtd_visitas,
      estoque_anunciado.km, estoque_anunciado.cav, estoque_anunciado.preco_anuncio,
      estoque_anunciado.precofipe, estoque_anunciado.ano_modelo,
      estoque_anunciado.dias_em_estoque, qtd_leads, qtd_visita, estoque_anunciado.link_anuncio]
    sorts: [estoque_anunciado.qtd_visitas desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${estoque_anunciado.qtd_leads}/${estoque_anunciado.dias_em_estoque}",
        label: Leads_Dia, value_format: !!null '', value_format_name: decimal_1, _kind_hint: dimension,
        table_calculation: leads_dia, _type_hint: number}, {category: table_calculation,
        expression: "${estoque_anunciado.preco_anuncio}/${estoque_anunciado.precofipe}",
        label: Preco_Fipe, value_format: !!null '', value_format_name: percent_1,
        _kind_hint: dimension, table_calculation: preco_fipe, _type_hint: number},
      {category: measure, expression: !!null '', label: Qtd_Leads, value_format: !!null '',
        value_format_name: !!null '', based_on: estoque_anunciado.qtd_leads,
        _kind_hint: measure, measure: qtd_leads, type: sum, _type_hint: number}, {
        category: measure, expression: !!null '', label: Qtd_Visita, value_format: !!null '',
        value_format_name: !!null '', based_on: estoque_anunciado.qtd_visitas,
        _kind_hint: measure, measure: qtd_visita, type: sum, _type_hint: number}]
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
    column_order: ["$$$_row_numbers_$$$", estoque_anunciado.placa, estoque_anunciado.marca,
      estoque_anunciado.modelo, estoque_anunciado.versao, estoque_anunciado.ano_modelo,
      estoque_anunciado.km, estoque_anunciado.cav, qtd_leads, estoque_anunciado.qtd_visitas,
      qtd_visita, estoque_anunciado.dias_em_estoque, leads_dia, estoque_anunciado.precofipe,
      estoque_anunciado.preco_anuncio, preco_fipe]
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      qtd_leads:
        is_active: false
    x_axis_gridlines: false
    y_axis_gridlines: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: estoque_anunciado.count,
            id: estoque_anunciado.count, name: Creditas Estoque Anunciado}],
        showLabels: true, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    font_size: '16'
    series_types: {}
    point_style: none
    series_colors:
      estoque_anunciado.count: "#72D16D"
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
    hidden_fields: [estoque_anunciado.qtd_visitas, estoque_anunciado.qtd_leads]
    listen:
      Categoria Dias Em Estoque: estoque_anunciado.categoria
      Loja: estoque_anunciado.cav
      Status: estoque_anunciado.status
    row: 14
    col: 0
    width: 24
    height: 9
  - title: Status Pronta_Entrega
    name: Status Pronta_Entrega
    model: Creditas_Volanty
    explore: estoque_anunciado
    type: single_value
    fields: [anunciados, estoque_anunciado.count]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Anunciados,
        value_format: !!null '', value_format_name: !!null '', based_on: estoque_anunciado.count,
        _kind_hint: measure, measure: anunciados, type: count, _type_hint: number,
        filters: {estoque_anunciado.status: ANUNCIADO}}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Total
    series_types: {}
    defaults_version: 1
    listen:
      Loja: estoque_anunciado.cav
      Status: estoque_anunciado.status
    row: 0
    col: 6
    width: 6
    height: 2
  - title: Estoque por Loja
    name: Estoque por Loja
    model: Creditas_Volanty
    explore: estoque_anunciado
    type: looker_column
    fields: [estoque_anunciado.count, estoque_anunciado.cav]
    sorts: [estoque_anunciado.count]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: estoque_anunciado.count,
            id: estoque_anunciado.count, name: Creditas Estoque Anunciado}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    font_size: '16'
    series_types: {}
    series_colors:
      estoque_anunciado.count: "#72D16D"
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
      Loja: estoque_anunciado.cav
      Status: estoque_anunciado.status
    row: 2
    col: 0
    width: 8
    height: 6
  - title: Estoque Modelos
    name: Estoque Modelos
    model: Creditas_Volanty
    explore: estoque_anunciado
    type: looker_grid
    fields: [estoque_anunciado.count, estoque_anunciado.marca, estoque_anunciado.modelo]
    sorts: [estoque_anunciado.count desc]
    limit: 500
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
    y_axis_gridlines: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: estoque_anunciado.count,
            id: estoque_anunciado.count, name: Creditas Estoque Anunciado}],
        showLabels: true, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    font_size: '16'
    series_types: {}
    point_style: none
    series_colors:
      estoque_anunciado.count: "#72D16D"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
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
    defaults_version: 1
    listen:
      Loja: estoque_anunciado.cav
      Status: estoque_anunciado.status
    row: 2
    col: 16
    width: 8
    height: 6
  - title: Estoque por dias em Estoque
    name: Estoque por dias em Estoque
    model: Creditas_Volanty
    explore: estoque_anunciado
    type: looker_bar
    fields: [estoque_anunciado.count, estoque_anunciado.categoria]
    sorts: [estoque_anunciado.count desc]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: estoque_anunciado.count,
            id: estoque_anunciado.count, name: Creditas Estoque Anunciado}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    font_size: '16'
    series_types: {}
    series_colors:
      estoque_anunciado.count: "#72D16D"
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
      Loja: estoque_anunciado.cav
      Status: estoque_anunciado.status
    row: 2
    col: 8
    width: 8
    height: 6
  - title: Total de Anúncios
    name: Total de Anúncios
    model: Creditas_Volanty
    explore: estoque_anunciado
    type: single_value
    fields: [estoque_anunciado.count]
    filters: {}
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
    listen:
      Loja: estoque_anunciado.cav
      Status: estoque_anunciado.status
    row: 0
    col: 0
    width: 6
    height: 2
  - title: Estoque por Cor
    name: Estoque por Cor
    model: Creditas_Volanty
    explore: estoque_anunciado
    type: looker_column
    fields: [estoque_anunciado.count, estoque_anunciado.cor]
    sorts: [estoque_anunciado.count]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: estoque_anunciado.count,
            id: estoque_anunciado.count, name: Creditas Estoque Anunciado}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    font_size: '16'
    series_types: {}
    series_colors:
      estoque_anunciado.count: "#B1399E"
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
      Loja: estoque_anunciado.cav
      Status: estoque_anunciado.status
    row: 8
    col: 13
    width: 11
    height: 6
  - title: Estoque por Ano_Modelo
    name: Estoque por Ano_Modelo
    model: Creditas_Volanty
    explore: estoque_anunciado
    type: looker_column
    fields: [estoque_anunciado.count, estoque_anunciado.ano_modelo]
    sorts: [estoque_anunciado.count]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: estoque_anunciado.count,
            id: estoque_anunciado.count, name: Creditas Estoque Anunciado}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    font_size: '16'
    series_types: {}
    series_colors:
      estoque_anunciado.count: "#75E2E2"
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
      Loja: estoque_anunciado.cav
      Status: estoque_anunciado.status
    row: 8
    col: 0
    width: 13
    height: 6
  - title: Status Reservados
    name: Status Reservados
    model: Creditas_Volanty
    explore: estoque_anunciado
    type: single_value
    fields: [reservados, estoque_anunciado.count]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Reservados,
        value_format: !!null '', value_format_name: !!null '', based_on: estoque_anunciado.count,
        _kind_hint: measure, measure: reservados, type: count, _type_hint: number,
        filters: {estoque_anunciado.status: RESERVADO}}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Total
    series_types: {}
    defaults_version: 1
    listen:
      Loja: estoque_anunciado.cav
      Status: estoque_anunciado.status
    row: 0
    col: 18
    width: 6
    height: 2
  - title: Status Em_Preparacao
    name: Status Em_Preparacao
    model: Creditas_Volanty
    explore: estoque_anunciado
    type: single_value
    fields: [anunciados, estoque_anunciado.count]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Anunciados,
        value_format: !!null '', value_format_name: !!null '', based_on: estoque_anunciado.count,
        _kind_hint: measure, measure: anunciados, type: count, _type_hint: number,
        filters: {estoque_anunciado.status: '"EM_PREPARACAO"'}}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Total
    series_types: {}
    defaults_version: 1
    listen:
      Loja: estoque_anunciado.cav
      Status: estoque_anunciado.status
    row: 0
    col: 12
    width: 6
    height: 2
  filters:
  - name: Status
    title: Status
    type: field_filter
    default_value: ANUNCIADO,"EM_PREPARACAO",RESERVADO
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
      options: []
    model: Creditas_Volanty
    explore: estoque_anunciado
    listens_to_filters: []
    field: estoque_anunciado.status
  - name: Categoria Dias Em Estoque
    title: Categoria Dias Em Estoque
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: Creditas_Volanty
    explore: estoque_anunciado
    listens_to_filters: []
    field: estoque_anunciado.categoria
  - name: Loja
    title: Loja
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: popover
      options: []
    model: Creditas_Volanty
    explore: estoque_anunciado
    listens_to_filters: []
    field: estoque_anunciado.cav
