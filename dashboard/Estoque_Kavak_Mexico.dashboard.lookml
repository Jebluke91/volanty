
- dashboard: estoque_kavak_mex
  title: Estoque kavak_mex
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Entradas e Saídas Por Dia
    name: Entradas e Saídas Por Dia
    model: Pricing
    explore: crawler_kavak_mex_stock
    type: looker_column
    fields: [crawler_kavak_mex_stock.data_date, crawler_kavak_mex_stock.count, crawler_kavak_mex_stock.qtd_saida,
      crawler_kavak_mex_stock.qtd_entrada]
    filters:
      crawler_kavak_mex_stock.data_date: after 2021/07/16
    sorts: [crawler_kavak_mex_stock.data_date]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${crawler_kavak_mex_stock.qtd_entrada}\
          \ + (0 * ${crawler_kavak_mex_stock.count})", label: qtd_entrada, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, table_calculation: qtd_entrada,
        _type_hint: number}, {category: table_calculation, expression: "-${crawler_kavak_mex_stock.qtd_saida}\
          \ + (0 * ${crawler_kavak_mex_stock.count})", label: qtd_saida, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, table_calculation: qtd_saida,
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
    y_axes: [{label: '', orientation: left, series: [{axisId: qtd_entrada, id: qtd_entrada,
            name: qtd_entrada}, {axisId: qtd_saida, id: qtd_saida, name: qtd_saida}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_labels:
      qtd_entrada: Qtds entrada
      qtd_saida: Qtds saída
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: [crawler_kavak_mex_stock.qtd_saida, crawler_kavak_mex_stock.qtd_entrada,
      crawler_kavak_mex_stock.count]
    listen: {}
    row: 21
    col: 0
    width: 24
    height: 7
  - title: Vendas Acumuladas
    name: Vendas Acumuladas
    model: Pricing
    explore: crawler_kavak_mex_stock
    type: looker_line
    fields: [crawler_kavak_mex_stock.data_date, crawler_kavak_mex_stock.count, crawler_kavak_mex_stock.qtd_vendas_acum]
    sorts: [crawler_kavak_mex_stock.data_date desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${crawler_kavak_mex_stock.qtd_vendas_acum}\
          \ + (0 * ${crawler_kavak_mex_stock.count})", label: qtd_vendas_acum, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, table_calculation: qtd_vendas_acum,
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
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: qtd_vendas_acum, id: qtd_vendas_acum,
            name: qtd_vendas_acum}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      qtd_vendas_acum: "#FFD95F"
    defaults_version: 1
    hidden_fields: [crawler_kavak_mex_stock.count, crawler_kavak_mex_stock.qtd_vendas_acum]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 46
    col: 0
    width: 24
    height: 6
  - title: Vendas
    name: Vendas
    model: Pricing
    explore: crawler_kavak_mex_stock
    type: looker_line
    fields: [crawler_kavak_mex_stock.qtd_saida, crawler_kavak_mex_stock.data_date, crawler_kavak_mex_stock.qtd_vendas_acum,
      crawler_kavak_mex_stock.count]
    sorts: [crawler_kavak_mex_stock.data_date]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${crawler_kavak_mex_stock.qtd_vendas_acum}\
          \ + (0 * ${crawler_kavak_mex_stock.count})", label: qtd_vendas_acum, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, table_calculation: qtd_vendas_acum,
        _type_hint: number, is_disabled: false}, {category: table_calculation, expression: "${crawler_kavak_mex_stock.qtd_saida}\
          \ + (0 * ${crawler_kavak_mex_stock.count})", label: qtd_saida, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, table_calculation: qtd_saida,
        _type_hint: number, is_disabled: false}]
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
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: qtd_vendas_acum, id: qtd_vendas_acum,
            name: qtd_vendas_acum}, {axisId: qtd_saida, id: qtd_saida, name: qtd_saida}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      qtd_saida: "#4276BE"
    defaults_version: 1
    hidden_fields: [crawler_kavak_mex_stock.count, crawler_kavak_mex_stock.qtd_vendas_acum,
      crawler_kavak_mex_stock.qtd_saida, qtd_vendas_acum]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 40
    col: 0
    width: 24
    height: 6
  - title: Anuncios
    name: Anuncios
    model: Pricing
    explore: crawler_kavak_mex
    type: single_value
    fields: [crawler_kavak_mex.count]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Preço Médio,
        value_format: !!null '', value_format_name: decimal_0, based_on: crawler_kavak_mex.price,
        _kind_hint: measure, measure: preco_medio, type: average, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Anuncios
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 2
    col: 0
    width: 5
    height: 2
  - title: Modelos
    name: Modelos
    model: Pricing
    explore: crawler_kavak_mex
    type: looker_grid
    fields: [crawler_kavak_mex.model, crawler_kavak_mex.count, percent_of_column_sum_of]
    sorts: [crawler_kavak_mex.count desc]
    limit: 500
    dynamic_fields: [{args: [crawler_kavak_mex.count], calculation_type: percent_of_column_sum,
        category: table_calculation, based_on: crawler_kavak_mex.count, label: Percent
          of column sum of, source_field: crawler_kavak_mex.count, table_calculation: percent_of_column_sum_of,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
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
      percent_of_column_sum_of: Percent
    series_cell_visualizations:
      percent_of_column_sum_of:
        is_active: true
    series_types: {}
    defaults_version: 1
    hidden_fields: [crawler_kavak_mex.count]
    row: 2
    col: 15
    width: 9
    height: 6
  - title: Anos de Modelo
    name: Anos de Modelo
    model: Pricing
    explore: crawler_kavak_mex
    type: looker_column
    fields: [crawler_kavak_mex.model_year, crawler_kavak_mex.count, percent_of_column_sum_of]
    filters:
      crawler_kavak_mex.model_year: ">2000"
    sorts: [crawler_kavak_mex.model_year]
    limit: 500
    dynamic_fields: [{args: [crawler_kavak_mex.count], calculation_type: percent_of_column_sum,
        category: table_calculation, based_on: crawler_kavak_mex.count, label: Percent
          of column sum of, source_field: crawler_kavak_mex.count, table_calculation: percent_of_column_sum_of,
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
    y_axes: [{label: '', orientation: left, series: [{axisId: crawler_kavak_mex.count,
            id: crawler_kavak_mex.count, name: Crawler kavak_mex}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      percent_of_column_sum_of: "#75E2E2"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: [crawler_kavak_mex.count]
    row: 8
    col: 0
    width: 8
    height: 6
  - title: Evolucão do Estoque
    name: Evolucão do Estoque
    model: Pricing
    explore: crawler_kavak_mex_stock
    type: looker_line
    fields: [crawler_kavak_mex_stock.data_date, crawler_kavak_mex_stock.count, crawler_kavak_mex_stock.estoque]
    sorts: [crawler_kavak_mex_stock.data_date]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${crawler_kavak_mex_stock.qtd_entrada}\
          \ + (0 * ${crawler_kavak_mex_stock.count})", label: qtd_entrada, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, table_calculation: qtd_entrada,
        _type_hint: number, is_disabled: true}, {category: table_calculation, expression: "-${crawler_kavak_mex_stock.qtd_saida}\
          \ + (0 * ${crawler_kavak_mex_stock.count})", label: qtd_saida, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, table_calculation: qtd_saida,
        _type_hint: number, is_disabled: true}, {category: table_calculation, expression: "${crawler_kavak_mex_stock.estoque}\
          \ + (0 * ${crawler_kavak_mex_stock.count})", label: estoque, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, table_calculation: estoque,
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
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: qtd_entrada, id: qtd_entrada,
            name: qtd_entrada}, {axisId: qtd_saida, id: qtd_saida, name: qtd_saida}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      estoque: "#C2DD67"
    series_labels:
      qtd_entrada: Qtds entrada
      qtd_saida: Qtds saída
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [crawler_kavak_mex_stock.count, crawler_kavak_mex_stock.estoque]
    listen: {}
    row: 34
    col: 0
    width: 24
    height: 6
  - title: Marcas
    name: Marcas
    model: Pricing
    explore: crawler_kavak_mex
    type: looker_grid
    fields: [crawler_kavak_mex.count, percent_of_column_sum_of, crawler_kavak_mex.brand]
    sorts: [crawler_kavak_mex.count desc]
    limit: 500
    dynamic_fields: [{args: [crawler_kavak_mex.count], calculation_type: percent_of_column_sum,
        category: table_calculation, based_on: crawler_kavak_mex.count, label: Percent
          of column sum of, source_field: crawler_kavak_mex.count, table_calculation: percent_of_column_sum_of,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
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
      percent_of_column_sum_of: Percent
    series_cell_visualizations:
      percent_of_column_sum_of:
        is_active: true
    series_types: {}
    defaults_version: 1
    hidden_fields: [crawler_kavak_mex.count]
    row: 2
    col: 6
    width: 9
    height: 6
  - title: Faixa de Km
    name: Faixa de Km
    model: Pricing
    explore: crawler_kavak_mex
    type: looker_column
    fields: [crawler_kavak_mex.count, faixa_de_km, percent_of_column_sum_of]
    filters:
      crawler_kavak_mex.km: NOT NULL
    sorts: [faixa_de_km]
    limit: 500
    dynamic_fields: [{category: dimension, expression: "if(${crawler_kavak_mex.km}<10000,\
          \ \"010k\",\n  if(${crawler_kavak_mex.km}<20000, \"020k\",\n    if(${crawler_kavak_mex.km}<30000,\
          \ \"030k\",\n      if(${crawler_kavak_mex.km}<40000, \"040k\",\n        if(${crawler_kavak_mex.km}<50000,\
          \ \"050k\",\n          if(${crawler_kavak_mex.km}<60000, \"060k\", if(${crawler_kavak_mex.km}<70000,\
          \ \"070k\",\n              if(${crawler_kavak_mex.km}<80000, \"080k\",\n   \
          \             if(${crawler_kavak_mex.km}<90000, \"090k\",\n                \
          \  if(${crawler_kavak_mex.km}<100000, \"100k\",\n                    if(${crawler_kavak_mex.km}<110000,\n\
          \                      \"110k\",\n                      if(${crawler_kavak_mex.km}>=110000,\
          \ \"110k +\", \"\"))))))))))))", label: Faixa de km, value_format: !!null '',
        value_format_name: !!null '', dimension: faixa_de_km, _kind_hint: dimension,
        _type_hint: string}, {args: [crawler_kavak_mex.count], calculation_type: percent_of_column_sum,
        category: table_calculation, based_on: crawler_kavak_mex.count, label: Percent
          of column sum of, source_field: crawler_kavak_mex.count, table_calculation: percent_of_column_sum_of,
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
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      percent_of_column_sum_of: "#E57947"
    show_null_points: true
    defaults_version: 1
    hidden_fields: [crawler_kavak_mex.count]
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
    listen: {}
    row: 8
    col: 8
    width: 8
    height: 6
  - name: Estoque Atual da kavak_mex
    type: text
    title_text: Estoque Atual da kavak_mex
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 2
  - name: Histórico do Estoque
    type: text
    title_text: Histórico do Estoque
    subtitle_text: ''
    body_text: ''
    row: 14
    col: 0
    width: 24
    height: 2
  - title: Entradas Por Dia
    name: Entradas Por Dia
    model: Pricing
    explore: crawler_kavak_mex_stock
    type: looker_line
    fields: [crawler_kavak_mex_stock.data_date, crawler_kavak_mex_stock.count, crawler_kavak_mex_stock.qtd_entrada]
    filters:
      crawler_kavak_mex_stock.data_date: after 2021/07/16
    sorts: [crawler_kavak_mex_stock.data_date]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${crawler_kavak_mex_stock.qtd_entrada}\
          \ + (0 * ${crawler_kavak_mex_stock.count})", label: qtd_entrada, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, table_calculation: qtd_entrada,
        _type_hint: number}, {category: table_calculation, expression: "-${crawler_kavak_mex_stock.qtd_saida}\
          \ + (0 * ${crawler_kavak_mex_stock.count})", label: qtd_saida, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, table_calculation: qtd_saida,
        _type_hint: number, is_disabled: true}]
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
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: qtd_entrada, id: qtd_entrada,
            name: qtd_entrada}, {axisId: qtd_saida, id: qtd_saida, name: qtd_saida}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hidden_series: [qtd_saida]
    hide_legend: true
    series_types: {}
    series_labels:
      qtd_entrada: Qtds entrada
      qtd_saida: Qtds saída
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [crawler_kavak_mex_stock.qtd_entrada, crawler_kavak_mex_stock.count]
    listen: {}
    row: 28
    col: 0
    width: 24
    height: 6
  - title: Faixa de Preço
    name: Faixa de Preço
    model: Pricing
    explore: crawler_kavak_mex
    type: looker_column
    fields: [crawler_kavak_mex.count, faixa_de_preco, percent_of_column_sum_of]
    filters:
      crawler_kavak_mex.price: NOT NULL
    sorts: [faixa_de_preco]
    limit: 500
    dynamic_fields: [{category: dimension, expression: "if(${crawler_kavak_mex.price}<30000,\
          \ \"030k\",\n  if(${crawler_kavak_mex.price}<50000, \"050k\",\n    if(${crawler_kavak_mex.price}<70000,\
          \ \"070k\",\n      if(${crawler_kavak_mex.price}<90000, \"090k\",\n        \
          \ if(${crawler_kavak_mex.price}<110000, \"110k\",\n        if(${crawler_kavak_mex.price}>110000,\
          \ \"111k +\", \"\"))))))", label: Faixa de Preço, value_format: !!null '',
        value_format_name: !!null '', dimension: faixa_de_preco, _kind_hint: dimension,
        _type_hint: string}, {args: [crawler_kavak_mex.count], calculation_type: percent_of_column_sum,
        category: table_calculation, based_on: crawler_kavak_mex.count, label: Percent
          of column sum of, source_field: crawler_kavak_mex.count, table_calculation: percent_of_column_sum_of,
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
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      percent_of_column_sum_of: "#FBB555"
    show_null_points: true
    defaults_version: 1
    hidden_fields: [crawler_kavak_mex.count]
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
    listen: {}
    row: 8
    col: 16
    width: 8
    height: 6
  - title: Ticket Médio (Copiar)
    name: Ticket Médio (Copiar)
    model: Pricing
    explore: crawler_kavak_mex
    type: single_value
    fields: [preco_medio]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Preço Médio,
        value_format: !!null '', value_format_name: decimal_0, based_on: crawler_kavak_mex.price,
        _kind_hint: measure, measure: preco_medio, type: average, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Ticket Médio
    series_types: {}
    defaults_version: 1
    row: 4
    col: 0
    width: 5
    height: 2
  - title: Valor Estoque
    name: Valor Estoque
    model: Pricing
    explore: crawler_kavak_mex
    type: single_value
    fields: [crawler_kavak_mex.count, preco_medio]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Preço Médio,
        value_format: !!null '', value_format_name: decimal_0, based_on: crawler_kavak_mex.price,
        _kind_hint: measure, measure: preco_medio, type: average, _type_hint: number},
      {category: table_calculation, expression: "${preco_medio}*${crawler_kavak_mex.count}",
        label: Valor total dos Carros, value_format: !!null '', value_format_name: usd_0,
        _kind_hint: measure, table_calculation: valor_total_dos_carros, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Valor Total do Estoque
    series_types: {}
    defaults_version: 1
    hidden_fields: [preco_medio, crawler_kavak_mex.count]
    row: 6
    col: 0
    width: 5
    height: 2
  - title: Estimativas de Vendas Por Mês
    name: Estimativas de Vendas Por Mês
    model: Pricing
    explore: crawler_kavak_mex_stock
    type: looker_column
    fields: [crawler_kavak_mex_stock.data_month, qtd_saida_1]
    fill_fields: [crawler_kavak_mex_stock.data_month]
    filters:
      crawler_kavak_mex_stock.data_date: after 2021/08/01
    sorts: [crawler_kavak_mex_stock.data_month desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${crawler_kavak_mex_stock.qtd_entrada}\
          \ + (0 * ${crawler_kavak_mex_stock.count})", label: qtd_entrada, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, table_calculation: qtd_entrada,
        _type_hint: number, is_disabled: true}, {category: table_calculation, expression: "${crawler_kavak_mex_stock.qtd_saida} ",
        label: qtd_saida, value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        table_calculation: qtd_saida, _type_hint: number, is_disabled: true}, {category: measure,
        expression: !!null '', label: Qtd_Saida, value_format: !!null '', value_format_name: !!null '',
        based_on: crawler_kavak_mex_stock.qtd_saida, _kind_hint: measure, measure: qtd_saida_1,
        type: sum, _type_hint: number}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: qtd_saida_1, id: qtd_saida_1,
            name: Qtd_Saida}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      qtd_saida_1: "#592EC2"
    series_labels:
      qtd_entrada: Qtds entrada
      qtd_saida: Qtds saída
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: []
    row: 16
    col: 3
    width: 8
    height: 5
  - title: Estimativas de Anuncios Por Mês
    name: Estimativas de Anuncios Por Mês
    model: Pricing
    explore: crawler_kavak_mex_stock
    type: looker_column
    fields: [crawler_kavak_mex_stock.data_month, qtd_entradas]
    fill_fields: [crawler_kavak_mex_stock.data_month]
    filters:
      crawler_kavak_mex_stock.data_date: after 2021/08/01
    sorts: [crawler_kavak_mex_stock.data_month desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${crawler_kavak_mex_stock.qtd_entrada}\
          \ + (0 * ${crawler_kavak_mex_stock.count})", label: qtd_entrada, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, table_calculation: qtd_entrada,
        _type_hint: number, is_disabled: true}, {category: table_calculation, expression: "${crawler_kavak_mex_stock.qtd_saida} ",
        label: qtd_saida, value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        table_calculation: qtd_saida, _type_hint: number, is_disabled: true}, {category: measure,
        expression: !!null '', label: Qtd_Entradas, value_format: !!null '', value_format_name: !!null '',
        based_on: crawler_kavak_mex_stock.qtd_entrada, _kind_hint: measure, measure: qtd_entradas,
        type: sum, _type_hint: number}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: qtd_saida_1, id: qtd_saida_1,
            name: Qtd_Saida}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      qtd_saida_1: "#592EC2"
    series_labels:
      qtd_entrada: Qtds entrada
      qtd_saida: Qtds saída
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: []
    row: 16
    col: 14
    width: 8
    height: 5
