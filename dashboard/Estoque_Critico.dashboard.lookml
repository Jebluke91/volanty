

- dashboard: estoque_crtico
  title: Estoque_Crítico
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Leads Vs Dias_Em_Estoque Vs Visitas
    name: Leads Vs Dias_Em_Estoque Vs Visitas
    model: Creditas_Volanty
    explore: estoque_anunciado
    type: looker_scatter
    fields: [estoque_anunciado.dias_em_estoque, estoque_anunciado.placa,
      estoque_anunciado.qtd_visitas, qtd_leads, qtd_visita]
    filters:
      estoque_anunciado.dias_em_estoque: ">=0"
    sorts: [qtd_leads desc]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Qtd_Leads,
        value_format: !!null '', value_format_name: !!null '', based_on: estoque_anunciado.qtd_leads,
        _kind_hint: measure, measure: qtd_leads, type: sum, _type_hint: number}, {
        category: measure, expression: !!null '', label: Qtd_Visita, value_format: !!null '',
        value_format_name: !!null '', based_on: estoque_anunciado.qtd_visitas,
        _kind_hint: measure, measure: qtd_visita, type: sum, _type_hint: number}]
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
    size_by_field: qtd_visita
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: true
    series_types: {}
    series_colors:
      estoque_anunciado.qtd_leads: "#72D16D"
      qtd_leads: "#72D16D"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [estoque_anunciado.placa, estoque_anunciado.qtd_visitas]
    listen:
      Status: estoque_anunciado.status
      Categoria Dias Em Estoque: estoque_anunciado.categoria
      Qtde Leads: estoque_anunciado.qtd_leads
    row: 0
    col: 0
    width: 16
    height: 9
  - title: Categoria Dias Em Estoque
    name: Categoria Dias Em Estoque
    model: Creditas_Volanty
    explore: estoque_anunciado
    type: looker_bar
    fields: [estoque_anunciado.categoria, estoque_anunciado.count]
    sorts: [estoque_anunciado.count desc]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: estoque_anunciado.count,
            id: estoque_anunciado.count, name: Creditas Estoque Anunciado}],
        showLabels: true, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    font_size: '16'
    series_types: {}
    series_colors:
      estoque_anunciado.count: "#72D16D"
    defaults_version: 1
    listen:
      Status: estoque_anunciado.status
      Categoria Dias Em Estoque: estoque_anunciado.categoria
      Qtde Leads: estoque_anunciado.qtd_leads
    row: 0
    col: 16
    width: 8
    height: 9
  - title: Estoque Detalhado
    name: Estoque Detalhado
    model: Creditas_Volanty
    explore: estoque_anunciado
    type: looker_grid
    fields: [estoque_anunciado.placa, estoque_anunciado.marca, estoque_anunciado.modelo,
      estoque_anunciado.versao, estoque_anunciado.qtd_leads, estoque_anunciado.km,
      estoque_anunciado.cav, estoque_anunciado.preco_anuncio, estoque_anunciado.precofipe,
      estoque_anunciado.ano_modelo, estoque_anunciado.dias_em_estoque,
      qtd_leads, qtd_visita, estoque_anunciado.link_anuncio, estoque_anunciado.preco_webmotors]
    sorts: [qtd_leads desc]
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
      estoque_anunciado.km, estoque_anunciado.cav, qtd_leads, qtd_visita,
      estoque_anunciado.dias_em_estoque, leads_dia, estoque_anunciado.preco_anuncio,
      estoque_anunciado.precofipe, preco_fipe, estoque_anunciado.preco_webmotors,
      estoque_anunciado.link_anuncio]
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
    hidden_fields: [estoque_anunciado.qtd_leads]
    listen:
      Status: estoque_anunciado.status
      Categoria Dias Em Estoque: estoque_anunciado.categoria
      Qtde Leads: estoque_anunciado.qtd_leads
    row: 9
    col: 0
    width: 24
    height: 9
  - name: Plano de Acao Estoque Critico
    type: text
    title_text: Plano de Acao Estoque Critico
    subtitle_text: ''
    body_text: ''
    row: 30
    col: 0
    width: 24
    height: 2
  - title: Detalhado
    name: Detalhado
    model: Creditas_Volanty
    explore: creditas_plano_acao_estoque_critico
    type: looker_grid
    fields: [creditas_plano_acao_estoque_critico.placa, creditas_plano_acao_estoque_critico.a____o,
      creditas_plano_acao_estoque_critico.data_a____o_date, creditas_plano_acao_estoque_critico.status,
      creditas_plano_acao_estoque_critico.leads_semana_anterior, creditas_plano_acao_estoque_critico.leads_semana_anterior_por_dia,
      creditas_plano_acao_estoque_critico.leads_semana_posterior, creditas_plano_acao_estoque_critico.leads_semana_posterior_por_dia,
      crescimento_leads_por_dia]
    sorts: [creditas_plano_acao_estoque_critico.data_a____o_date desc]
    limit: 500
    dynamic_fields: [{category: dimension, expression: "if(${creditas_plano_acao_estoque_critico.leads_semana_posterior_por_dia}\n\
          \  =0,0,\n  if(${creditas_plano_acao_estoque_critico.leads_semana_anterior_por_dia}\n\
          \  =0,0,\n  ${creditas_plano_acao_estoque_critico.leads_semana_posterior_por_dia}/\n\
          \   ${creditas_plano_acao_estoque_critico.leads_semana_anterior_por_dia}-1\n\
          \  ))\n\n", label: Crescimento_Leads_Por_Dia, value_format: !!null '', value_format_name: percent_1,
        dimension: crescimento_leads_por_dia, _kind_hint: dimension, _type_hint: number}]
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
    column_order: ["$$$_row_numbers_$$$", creditas_plano_acao_estoque_critico.placa,
      creditas_plano_acao_estoque_critico.a____o, creditas_plano_acao_estoque_critico.data_a____o_date,
      creditas_plano_acao_estoque_critico.status, creditas_plano_acao_estoque_critico.leads_semana_anterior,
      creditas_plano_acao_estoque_critico.leads_semana_anterior_por_dia, creditas_plano_acao_estoque_critico.leads_semana_posterior,
      creditas_plano_acao_estoque_critico.leads_semana_posterior_por_dia]
    show_totals: true
    show_row_totals: true
    series_labels:
      creditas_plano_acao_estoque_critico.status: Venda
      creditas_plano_acao_estoque_critico.data_a____o_date: Data_Acao
      creditas_plano_acao_estoque_critico.a____o: Acao
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
    row: 36
    col: 0
    width: 24
    height: 5
  - title: Leads Semana Anterior
    name: Leads Semana Anterior
    model: Creditas_Volanty
    explore: creditas_plano_acao_estoque_critico
    type: single_value
    fields: [leads_semana_anterior]
    limit: 500
    dynamic_fields: [{category: dimension, expression: "if(${creditas_plano_acao_estoque_critico.leads_semana_posterior_por_dia}\n\
          \  =0,0,\n  if(${creditas_plano_acao_estoque_critico.leads_semana_anterior_por_dia}\n\
          \  =0,0,\n  ${creditas_plano_acao_estoque_critico.leads_semana_posterior_por_dia}/\n\
          \   ${creditas_plano_acao_estoque_critico.leads_semana_anterior_por_dia}-1\n\
          \  ))\n\n", label: Crescimento_Leads_Por_Dia, value_format: !!null '', value_format_name: percent_1,
        dimension: crescimento_leads_por_dia, _kind_hint: dimension, _type_hint: number},
      {category: measure, expression: !!null '', label: Leads Semana Anterior, value_format: !!null '',
        value_format_name: !!null '', based_on: creditas_plano_acao_estoque_critico.leads_semana_anterior,
        _kind_hint: measure, measure: leads_semana_anterior, type: sum, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", creditas_plano_acao_estoque_critico.placa,
      creditas_plano_acao_estoque_critico.a____o, creditas_plano_acao_estoque_critico.data_a____o_date,
      creditas_plano_acao_estoque_critico.status, creditas_plano_acao_estoque_critico.leads_semana_anterior,
      creditas_plano_acao_estoque_critico.leads_semana_anterior_por_dia, creditas_plano_acao_estoque_critico.leads_semana_posterior,
      creditas_plano_acao_estoque_critico.leads_semana_posterior_por_dia]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_labels:
      creditas_plano_acao_estoque_critico.status: Venda
      creditas_plano_acao_estoque_critico.data_a____o_date: Data_Acao
      creditas_plano_acao_estoque_critico.a____o: Acao
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
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
    hide_totals: false
    hide_row_totals: false
    listen:
      Data Ação: creditas_plano_acao_estoque_critico.data_a____o_date
    row: 32
    col: 10
    width: 5
    height: 4
  - title: Leads Semana Posterior
    name: Leads Semana Posterior
    model: Creditas_Volanty
    explore: creditas_plano_acao_estoque_critico
    type: single_value
    fields: [leads_semana_posterior]
    limit: 500
    dynamic_fields: [{category: dimension, expression: "if(${creditas_plano_acao_estoque_critico.leads_semana_posterior_por_dia}\n\
          \  =0,0,\n  if(${creditas_plano_acao_estoque_critico.leads_semana_anterior_por_dia}\n\
          \  =0,0,\n  ${creditas_plano_acao_estoque_critico.leads_semana_posterior_por_dia}/\n\
          \   ${creditas_plano_acao_estoque_critico.leads_semana_anterior_por_dia}-1\n\
          \  ))\n\n", label: Crescimento_Leads_Por_Dia, value_format: !!null '', value_format_name: percent_1,
        dimension: crescimento_leads_por_dia, _kind_hint: dimension, _type_hint: number},
      {category: measure, expression: !!null '', label: Leads Semana Posterior, value_format: !!null '',
        value_format_name: !!null '', based_on: creditas_plano_acao_estoque_critico.leads_semana_posterior,
        _kind_hint: measure, measure: leads_semana_posterior, type: sum, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", creditas_plano_acao_estoque_critico.placa,
      creditas_plano_acao_estoque_critico.a____o, creditas_plano_acao_estoque_critico.data_a____o_date,
      creditas_plano_acao_estoque_critico.status, creditas_plano_acao_estoque_critico.leads_semana_anterior,
      creditas_plano_acao_estoque_critico.leads_semana_anterior_por_dia, creditas_plano_acao_estoque_critico.leads_semana_posterior,
      creditas_plano_acao_estoque_critico.leads_semana_posterior_por_dia]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_labels:
      creditas_plano_acao_estoque_critico.status: Venda
      creditas_plano_acao_estoque_critico.data_a____o_date: Data_Acao
      creditas_plano_acao_estoque_critico.a____o: Acao
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
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
    hide_totals: false
    hide_row_totals: false
    listen:
      Data Ação: creditas_plano_acao_estoque_critico.data_a____o_date
    row: 32
    col: 15
    width: 5
    height: 4
  - title: Reservados/Vendidos
    name: Reservados/Vendidos
    model: Creditas_Volanty
    explore: creditas_plano_acao_estoque_critico
    type: single_value
    fields: [creditas_plano_acao_estoque_critico.count]
    filters:
      creditas_plano_acao_estoque_critico.status: "-NULL"
    limit: 500
    dynamic_fields: [{category: dimension, expression: "if(${creditas_plano_acao_estoque_critico.leads_semana_posterior_por_dia}\n\
          \  =0,0,\n  if(${creditas_plano_acao_estoque_critico.leads_semana_anterior_por_dia}\n\
          \  =0,0,\n  ${creditas_plano_acao_estoque_critico.leads_semana_posterior_por_dia}/\n\
          \   ${creditas_plano_acao_estoque_critico.leads_semana_anterior_por_dia}-1\n\
          \  ))\n\n", label: Crescimento_Leads_Por_Dia, value_format: !!null '', value_format_name: percent_1,
        dimension: crescimento_leads_por_dia, _kind_hint: dimension, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", creditas_plano_acao_estoque_critico.placa,
      creditas_plano_acao_estoque_critico.a____o, creditas_plano_acao_estoque_critico.data_a____o_date,
      creditas_plano_acao_estoque_critico.status, creditas_plano_acao_estoque_critico.leads_semana_anterior,
      creditas_plano_acao_estoque_critico.leads_semana_anterior_por_dia, creditas_plano_acao_estoque_critico.leads_semana_posterior,
      creditas_plano_acao_estoque_critico.leads_semana_posterior_por_dia]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_labels:
      creditas_plano_acao_estoque_critico.status: Venda
      creditas_plano_acao_estoque_critico.data_a____o_date: Data_Acao
      creditas_plano_acao_estoque_critico.a____o: Acao
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
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
    hide_totals: false
    hide_row_totals: false
    listen:
      Data Ação: creditas_plano_acao_estoque_critico.data_a____o_date
    row: 32
    col: 5
    width: 5
    height: 4
  - title: Qtd_Carros
    name: Qtd_Carros
    model: Creditas_Volanty
    explore: creditas_plano_acao_estoque_critico
    type: single_value
    fields: [creditas_plano_acao_estoque_critico.count]
    limit: 500
    dynamic_fields: [{category: dimension, expression: "if(${creditas_plano_acao_estoque_critico.leads_semana_posterior_por_dia}\n\
          \  =0,0,\n  if(${creditas_plano_acao_estoque_critico.leads_semana_anterior_por_dia}\n\
          \  =0,0,\n  ${creditas_plano_acao_estoque_critico.leads_semana_posterior_por_dia}/\n\
          \   ${creditas_plano_acao_estoque_critico.leads_semana_anterior_por_dia}-1\n\
          \  ))\n\n", label: Crescimento_Leads_Por_Dia, value_format: !!null '', value_format_name: percent_1,
        dimension: crescimento_leads_por_dia, _kind_hint: dimension, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", creditas_plano_acao_estoque_critico.placa,
      creditas_plano_acao_estoque_critico.a____o, creditas_plano_acao_estoque_critico.data_a____o_date,
      creditas_plano_acao_estoque_critico.status, creditas_plano_acao_estoque_critico.leads_semana_anterior,
      creditas_plano_acao_estoque_critico.leads_semana_anterior_por_dia, creditas_plano_acao_estoque_critico.leads_semana_posterior,
      creditas_plano_acao_estoque_critico.leads_semana_posterior_por_dia]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_labels:
      creditas_plano_acao_estoque_critico.status: Venda
      creditas_plano_acao_estoque_critico.data_a____o_date: Data_Acao
      creditas_plano_acao_estoque_critico.a____o: Acao
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
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
    hide_totals: false
    hide_row_totals: false
    listen:
      Data Ação: creditas_plano_acao_estoque_critico.data_a____o_date
    row: 32
    col: 0
    width: 5
    height: 4
  - title: Variacão
    name: Variacão
    model: Creditas_Volanty
    explore: creditas_plano_acao_estoque_critico
    type: single_value
    fields: [leads_semana_posterior, leads_semana_anterior]
    limit: 500
    dynamic_fields: [{category: dimension, expression: "if(${creditas_plano_acao_estoque_critico.leads_semana_posterior_por_dia}\n\
          \  =0,0,\n  if(${creditas_plano_acao_estoque_critico.leads_semana_anterior_por_dia}\n\
          \  =0,0,\n  ${creditas_plano_acao_estoque_critico.leads_semana_posterior_por_dia}/\n\
          \   ${creditas_plano_acao_estoque_critico.leads_semana_anterior_por_dia}-1\n\
          \  ))\n\n", label: Crescimento_Leads_Por_Dia, value_format: !!null '', value_format_name: percent_1,
        dimension: crescimento_leads_por_dia, _kind_hint: dimension, _type_hint: number},
      {category: measure, expression: !!null '', label: Leads Semana Posterior, value_format: !!null '',
        value_format_name: !!null '', based_on: creditas_plano_acao_estoque_critico.leads_semana_posterior,
        _kind_hint: measure, measure: leads_semana_posterior, type: sum, _type_hint: number},
      {category: measure, expression: !!null '', label: Leads_Semana_Anterior, value_format: !!null '',
        value_format_name: !!null '', based_on: creditas_plano_acao_estoque_critico.leads_semana_anterior,
        _kind_hint: measure, measure: leads_semana_anterior, type: sum, _type_hint: number},
      {category: table_calculation, expression: "${leads_semana_posterior}/${leads_semana_anterior}-1",
        label: Variacão, value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        table_calculation: variacao, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", creditas_plano_acao_estoque_critico.placa,
      creditas_plano_acao_estoque_critico.a____o, creditas_plano_acao_estoque_critico.data_a____o_date,
      creditas_plano_acao_estoque_critico.status, creditas_plano_acao_estoque_critico.leads_semana_anterior,
      creditas_plano_acao_estoque_critico.leads_semana_anterior_por_dia, creditas_plano_acao_estoque_critico.leads_semana_posterior,
      creditas_plano_acao_estoque_critico.leads_semana_posterior_por_dia]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_labels:
      creditas_plano_acao_estoque_critico.status: Venda
      creditas_plano_acao_estoque_critico.data_a____o_date: Data_Acao
      creditas_plano_acao_estoque_critico.a____o: Acao
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
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
    hide_totals: false
    hide_row_totals: false
    hidden_fields: [leads_semana_anterior, leads_semana_posterior]
    listen:
      Data Ação: creditas_plano_acao_estoque_critico.data_a____o_date
    row: 32
    col: 20
    width: 4
    height: 4
  - title: Performance por Marca e Modelo e versão
    name: Performance por Marca e Modelo e versão
    model: Creditas_Volanty
    explore: estoque_anunciado
    type: looker_grid
    fields: [estoque_anunciado.marca, estoque_anunciado.modelo,
      estoque_anunciado.count, med_dias_estoque, med_qtd_leads, estoque_anunciado.versao]
    sorts: [estoque_anunciado.count desc]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Med_Dias_Estoque,
        value_format: !!null '', value_format_name: !!null '', based_on: estoque_anunciado.dias_em_estoque,
        _kind_hint: measure, measure: med_dias_estoque, type: median, _type_hint: number},
      {category: measure, expression: !!null '', label: Med_Qtd_Leads, value_format: !!null '',
        value_format_name: !!null '', based_on: estoque_anunciado.qtd_leads,
        _kind_hint: measure, measure: med_qtd_leads, type: median, _type_hint: number},
      {category: table_calculation, expression: "${med_qtd_leads}/${med_dias_estoque}",
        label: Leads_Dia, value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        table_calculation: leads_dia, _type_hint: number}]
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
      estoque_anunciado.count: Qtd
    series_cell_visualizations:
      estoque_anunciado.count:
        is_active: true
      med_dias_estoque:
        is_active: true
      med_qtd_leads:
        is_active: true
    x_axis_gridlines: false
    y_axis_gridlines: false
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
        showLabels: true, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    font_size: '16'
    series_types: {}
    series_colors:
      estoque_anunciado.count: "#72D16D"
    defaults_version: 1
    listen:
      Status: estoque_anunciado.status
      Categoria Dias Em Estoque: estoque_anunciado.categoria
      Qtde Leads: estoque_anunciado.qtd_leads
    row: 18
    col: 0
    width: 24
    height: 6
  - title: Performance por Loja
    name: Performance por Loja
    model: Creditas_Volanty
    explore: estoque_anunciado
    type: looker_grid
    fields: [estoque_anunciado.count, med_dias_estoque, med_qtd_leads, estoque_anunciado.cav,
      qtd_0_leads]
    sorts: [estoque_anunciado.count desc]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Med_Dias_Estoque,
        value_format: !!null '', value_format_name: !!null '', based_on: estoque_anunciado.dias_em_estoque,
        _kind_hint: measure, measure: med_dias_estoque, type: median, _type_hint: number},
      {category: measure, expression: !!null '', label: Med_Qtd_Leads, value_format: !!null '',
        value_format_name: !!null '', based_on: estoque_anunciado.qtd_leads,
        _kind_hint: measure, measure: med_qtd_leads, type: median, _type_hint: number},
      {category: table_calculation, expression: "${med_qtd_leads}/${med_dias_estoque}",
        label: Leads_Dia, value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        table_calculation: leads_dia, _type_hint: number}, {category: measure, expression: !!null '',
        label: Qtd_0_Leads, value_format: !!null '', value_format_name: !!null '',
        based_on: estoque_anunciado.placa, _kind_hint: measure, measure: qtd_0_leads,
        type: count_distinct, _type_hint: number, filters: {estoque_anunciado.qtd_leads: '0'}}]
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
    column_order: ["$$$_row_numbers_$$$", estoque_anunciado.cav, estoque_anunciado.count,
      qtd_0_leads, med_dias_estoque, med_qtd_leads, leads_dia]
    show_totals: true
    show_row_totals: true
    series_labels:
      estoque_anunciado.count: Qtd
      estoque_anunciado.cav: Loja
    series_cell_visualizations:
      estoque_anunciado.count:
        is_active: true
      med_dias_estoque:
        is_active: true
      med_qtd_leads:
        is_active: true
      qtd_0_leads:
        is_active: true
    x_axis_gridlines: false
    y_axis_gridlines: false
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
        showLabels: true, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    font_size: '16'
    series_types: {}
    series_colors:
      estoque_anunciado.count: "#72D16D"
    defaults_version: 1
    listen:
      Status: estoque_anunciado.status
      Categoria Dias Em Estoque: estoque_anunciado.categoria
      Qtde Leads: estoque_anunciado.qtd_leads
    row: 24
    col: 0
    width: 24
    height: 6
  filters:
  - name: Status
    title: Status
    type: field_filter
    default_value: ANUNCIADO
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
  - name: Data Ação
    title: Data Ação
    type: field_filter
    default_value: 2021/08/25
    allow_multiple_values: true
    required: false
    model: Creditas_Volanty
    explore: creditas_plano_acao_estoque_critico
    listens_to_filters: []
    field: creditas_plano_acao_estoque_critico.data_a____o_date
  - name: Qtde Leads
    title: Qtde Leads
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: Creditas_Volanty
    explore: estoque_anunciado
    listens_to_filters: []
    field: estoque_anunciado.qtd_leads
