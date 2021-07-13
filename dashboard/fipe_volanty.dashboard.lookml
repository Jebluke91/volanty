- dashboard: vendas_vs_fipe_volanty
  title: Vendas vs Fipe (Volanty)
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Modelos
    name: Modelos
    model: datalake
    explore: fipe_vendas_volanty
    type: looker_column
    fields: [fipe_vendas_volanty.model, mediana, fipe_vendas_volanty.count]
    filters:
      fipe_vendas_volanty.count: ">=2"
    sorts: [mediana]
    dynamic_fields: [{based_on: fipe_vendas_volanty.percentage, _kind_hint: measure, measure: mediana,
        type: median, _type_hint: number, category: measure, expression: !!null '',
        label: Mediana, value_format: !!null '', value_format_name: percent_0}]
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
    y_axes: [{label: Porcentagem Fipe, orientation: left, series: [{axisId: mediana,
            id: mediana, name: Mediana}], showLabels: true, showValues: true, minValue: !!null '',
        unpinAxis: true, tickDensity: default, tickDensityCustom: 3, type: linear}]
    x_axis_label: Modelo
    series_types: {}
    series_colors:
      media: "#C2DD67"
      mediana: "#C2DD67"
    reference_lines: [{reference_type: line, line_value: '1', range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000", label: Fipe}]
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    hidden_fields: [fipe_vendas_volanty.count]
    listen:
      Produto: fipe_vendas_volanty.produto_venda
      Data de Venda: fipe_vendas_volanty.sale_date
    row: 7
    col: 9
    width: 15
    height: 7
  - title: Quilômetros
    name: Quilômetros
    model: datalake
    explore: fipe_vendas_volanty
    type: looker_scatter
    fields: [fipe_vendas_volanty.km, mediana_percentage, fipe_vendas_volanty.count]
    filters:
      mediana_percentage: "<2"
    sorts: [mediana_percentage desc]
    limit: 500
    dynamic_fields: [{based_on: fipe_vendas_volanty.percentage, _kind_hint: measure, measure: mediana_percentage,
        type: median, _type_hint: number, category: measure, expression: !!null '',
        label: Mediana Percentage, value_format: !!null '', value_format_name: percent_0}]
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: linear
    y_axis_combined: true
    show_null_points: true
    y_axes: [{label: Porcentagem Fipe, orientation: left, series: [{axisId: mediana_percentage,
            id: mediana_percentage, name: Mediana Percentage}], showLabels: true,
        showValues: true, minValue: !!null '', unpinAxis: true, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      media_percentage: "#592EC2"
      mediana_percentage: "#592EC2"
    reference_lines: []
    trend_lines: [{color: "#000000", label_position: right, order: 3, period: 7, regression_type: polynomial,
        series_index: 1, show_label: true, label_type: string, label: Tendência}]
    interpolation: linear
    defaults_version: 1
    hidden_fields: [fipe_vendas_volanty.count]
    listen:
      Produto: fipe_vendas_volanty.produto_venda
      Data de Venda: fipe_vendas_volanty.sale_date
    row: 14
    col: 0
    width: 8
    height: 7
  - title: Parceiros Comerciais
    name: Parceiros Comerciais
    model: datalake
    explore: fipe_vendas_volanty
    type: looker_column
    fields: [fipe_vendas_volanty.fornecedor, mediana_percentage, fipe_vendas_volanty.count]
    filters:
      fipe_vendas_volanty.origem: Atacado
    sorts: [mediana_percentage]
    limit: 500
    dynamic_fields: [{based_on: fipe_vendas_volanty.percentage, _kind_hint: measure, measure: mediana_percentage,
        type: median, _type_hint: number, category: measure, expression: !!null '',
        label: Mediana Percentage, value_format: !!null '', value_format_name: percent_0}]
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
    y_axes: [{label: Porcentagem Fipe, orientation: left, series: [{axisId: mediana_percentage,
            id: mediana_percentage, name: Mediana Percentage}], showLabels: true,
        showValues: true, unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_colors:
      media_percentage: "#72D16D"
      mediana_percentage: "#72D16D"
    reference_lines: [{reference_type: line, line_value: '1', range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000", label: Fipe}]
    defaults_version: 1
    hidden_fields: [fipe_vendas_volanty.count]
    listen:
      Produto: fipe_vendas_volanty.produto_venda
      Data de Venda: fipe_vendas_volanty.sale_date
    row: 14
    col: 16
    width: 8
    height: 7
  - title: Porcentagem Fipe por Mês
    name: Porcentagem Fipe por Mês
    model: datalake
    explore: fipe_vendas_volanty
    type: looker_line
    fields: [fipe_vendas_volanty.sale_month, porcentagem_fipe, fipe_vendas_volanty.count]
    fill_fields: [fipe_vendas_volanty.sale_month]
    sorts: [fipe_vendas_volanty.sale_month desc]
    limit: 500
    dynamic_fields: [{based_on: fipe_vendas_volanty.percentage, _kind_hint: measure, measure: porcentagem_fipe,
        type: median, _type_hint: number, category: measure, expression: !!null '',
        label: Porcentagem Fipe, value_format: !!null '', value_format_name: percent_0}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: porcentagem_fipe, id: porcentagem_fipe,
            name: Porcentagem Fipe}], showLabels: true, showValues: true, minValue: !!null '',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Mês
    reference_lines: [{reference_type: line, line_value: '1', range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000", label: Fipe}]
    defaults_version: 1
    hidden_fields: [fipe_vendas_volanty.count]
    listen:
      Produto: fipe_vendas_volanty.produto_venda
      Data de Venda: fipe_vendas_volanty.sale_date
    row: 0
    col: 0
    width: 24
    height: 7
  - title: Marca
    name: Marca
    model: datalake
    explore: fipe_vendas_volanty
    type: looker_column
    fields: [fipe_vendas_volanty.brand, porcentagem_fipe, fipe_vendas_volanty.count]
    sorts: [porcentagem_fipe]
    limit: 500
    dynamic_fields: [{based_on: fipe_vendas_volanty.percentage, _kind_hint: measure, measure: porcentagem_fipe,
        type: median, _type_hint: number, category: measure, expression: !!null '',
        label: Porcentagem Fipe, value_format: !!null '', value_format_name: percent_0}]
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
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: porcentagem_fipe, id: porcentagem_fipe,
            name: Porcentagem Fipe}], showLabels: true, showValues: true, minValue: !!null '',
        unpinAxis: true, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Marca
    series_colors:
      porcentagem_fipe: "#B1399E"
    reference_lines: [{reference_type: line, line_value: '1', range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000", label: Fipe}]
    defaults_version: 1
    hidden_fields: [fipe_vendas_volanty.count]
    listen:
      Produto: fipe_vendas_volanty.produto_venda
      Data de Venda: fipe_vendas_volanty.sale_date
    row: 7
    col: 0
    width: 9
    height: 7
  - title: Origem
    name: Origem
    model: datalake
    explore: fipe_vendas_volanty
    type: looker_column
    fields: [fipe_vendas_volanty.origem, porcentagem_fipe, fipe_vendas_volanty.count]
    filters:
      fipe_vendas_volanty.origem: "-NULL"
    sorts: [porcentagem_fipe desc]
    limit: 500
    dynamic_fields: [{based_on: fipe_vendas_volanty.percentage, _kind_hint: measure, measure: porcentagem_fipe,
        type: median, _type_hint: number, category: measure, expression: !!null '',
        label: Porcentagem Fipe, value_format: !!null '', value_format_name: percent_0}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: porcentagem_fipe, id: porcentagem_fipe,
            name: Porcentagem Fipe}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_colors:
      porcentagem_fipe: "#4276BE"
    show_dropoff: false
    defaults_version: 1
    hidden_fields: [fipe_vendas_volanty.count]
    listen:
      Produto: fipe_vendas_volanty.produto_venda
      Data de Venda: fipe_vendas_volanty.sale_date
    row: 14
    col: 8
    width: 8
    height: 7
  - title: Detalhado
    name: Detalhado
    model: datalake
    explore: fipe_vendas_volanty
    type: looker_grid
    fields: [fipe_vendas_volanty.inspection_key, fipe_vendas_volanty.brand, fipe_vendas_volanty.model, fipe_vendas_volanty.versao,
      fipe_vendas_volanty.sale_date, fipe_vendas_volanty.sale_price, fipe_vendas_volanty.fipe_price, fipe_vendas_volanty.percentage]
    sorts: [fipe_vendas_volanty.percentage desc]
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      fipe_vendas_volanty.inspection_key: Chave de Inspeção
      fipe_vendas_volanty.brand: Marca
      fipe_vendas_volanty.model: Modelo
      fipe_vendas_volanty.versao: Versão
      fipe_vendas_volanty.sale_date: Data da Venda
      fipe_vendas_volanty.sale_price: Preço da Venda
      fipe_vendas_volanty.fipe_price: Preço da Fipe
      fipe_vendas_volanty.percentage: Porcentagem Fipe
    series_cell_visualizations:
      fipe_vendas_volanty.percentage:
        is_active: true
    series_types: {}
    defaults_version: 1
    listen:
      Produto: fipe_vendas_volanty.produto_venda
      Data de Venda: fipe_vendas_volanty.sale_date
    row: 27
    col: 8
    width: 16
    height: 6
  - title: Ano do Modelo
    name: Ano do Modelo
    model: datalake
    explore: fipe_vendas_volanty
    type: looker_column
    fields: [fipe_vendas_volanty.modelyear, mediana_percentage, fipe_vendas_volanty.count]
    sorts: [fipe_vendas_volanty.modelyear]
    limit: 500
    dynamic_fields: [{based_on: fipe_vendas_volanty.percentage, _kind_hint: measure, measure: mediana_percentage,
        type: median, _type_hint: number, category: measure, expression: !!null '',
        label: Mediana Percentage, value_format: !!null '', value_format_name: percent_0}]
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
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Porcentagem Fipe, orientation: left, series: [{axisId: mediana_percentage,
            id: mediana_percentage, name: Mediana Percentage}], showLabels: true,
        showValues: true, minValue: !!null '', unpinAxis: true, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Ano do Modelo
    series_types: {}
    series_colors:
      media_percentage: "#B32F37"
      mediana_percentage: "#B32F37"
    reference_lines: [{reference_type: line, line_value: '1', range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000", label: Fipe}]
    swap_axes: true
    show_null_points: true
    defaults_version: 1
    hidden_fields: [fipe_vendas_volanty.count]
    listen:
      Produto: fipe_vendas_volanty.produto_venda
      Data de Venda: fipe_vendas_volanty.sale_date
    row: 21
    col: 8
    width: 8
    height: 6
  - title: Valor da Venda
    name: Valor da Venda
    model: datalake
    explore: fipe_vendas_volanty
    type: looker_scatter
    fields: [fipe_vendas_volanty.sale_price, fipe_vendas_volanty.percentage, fipe_vendas_volanty.count]
    sorts: [fipe_vendas_volanty.sale_price]
    limit: 500
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    y_axes: [{label: Valor da Venda, orientation: bottom, series: [{axisId: fipe_vendas_volanty.sale_price,
            id: fipe_vendas_volanty.sale_price, name: Sale Price}], showLabels: true, showValues: true,
        unpinAxis: true, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Porcentagem Fipe
    series_types: {}
    series_colors:
      fipe_vendas_volanty.sale_price: "#FFD95F"
    swap_axes: true
    defaults_version: 1
    hidden_fields: [fipe_vendas_volanty.count]
    listen:
      Produto: fipe_vendas_volanty.produto_venda
      Data de Venda: fipe_vendas_volanty.sale_date
    row: 21
    col: 0
    width: 8
    height: 6
  - title: Estado
    name: Estado
    model: datalake
    explore: fipe_vendas_volanty
    type: looker_bar
    fields: [fipe_vendas_volanty.uf, mediana_percentage, fipe_vendas_volanty.count]
    sorts: [mediana_percentage desc]
    limit: 500
    dynamic_fields: [{based_on: fipe_vendas_volanty.percentage, _kind_hint: measure, measure: mediana_percentage,
        type: median, _type_hint: number, category: measure, expression: !!null '',
        label: Mediana Percentage, value_format: !!null '', value_format_name: percent_0}]
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
    y_axes: [{label: Porcentagem Fipe, orientation: bottom, series: [{axisId: mediana_percentage,
            id: mediana_percentage, name: Mediana Percentage}], showLabels: true,
        showValues: true, minValue: !!null '', unpinAxis: true, tickDensity: custom,
        tickDensityCustom: 6, type: linear}]
    x_axis_label: UF
    series_types: {}
    series_colors:
      media_percentage: "#E57947"
      mediana_percentage: "#E57947"
    defaults_version: 1
    hidden_fields: [fipe_vendas_volanty.count]
    listen:
      Produto: fipe_vendas_volanty.produto_venda
      Data de Venda: fipe_vendas_volanty.sale_date
    row: 27
    col: 0
    width: 8
    height: 6
  - title: CAV
    name: CAV
    model: datalake
    explore: fipe_vendas_volanty
    type: looker_column
    fields: [mediana_percentage, fipe_vendas_volanty.cav, fipe_vendas_volanty.count]
    sorts: [mediana_percentage desc]
    limit: 500
    dynamic_fields: [{based_on: fipe_vendas_volanty.percentage, _kind_hint: measure, measure: mediana_percentage,
        type: median, _type_hint: number, category: measure, expression: !!null '',
        label: Mediana Percentage, value_format: !!null '', value_format_name: percent_0}]
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
    y_axes: [{label: Porcentagem Fipe, orientation: left, series: [{axisId: mediana_percentage,
            id: mediana_percentage, name: Mediana Percentage}], showLabels: true,
        showValues: true, unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: CAV
    series_colors:
      media_percentage: "#9174F0"
      mediana_percentage: "#9174F0"
    reference_lines: [{reference_type: line, line_value: '1', range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000", label: Fipe}]
    defaults_version: 1
    hidden_fields: [fipe_vendas_volanty.count]
    listen:
      Produto: fipe_vendas_volanty.produto_venda
      Data de Venda: fipe_vendas_volanty.sale_date
    row: 21
    col: 16
    width: 8
    height: 6
  filters:
  - name: Produto
    title: Produto
    type: field_filter
    default_value: SELECIONADOS
    allow_multiple_values: true
    required: true
    ui_config:
      type: button_group
      display: inline
      options: []
    model: datalake
    explore: fipe_vendas_volanty
    listens_to_filters: []
    field: fipe_vendas_volanty.produto_venda
  - name: Data de Venda
    title: Data de Venda
    type: field_filter
    default_value: 5 month
    allow_multiple_values: true
    required: true
    ui_config:
      type: advanced
      display: inline
      options: []
    model: datalake
    explore: fipe_vendas_volanty
    listens_to_filters: []
    field: fipe_vendas_volanty.sale_date
