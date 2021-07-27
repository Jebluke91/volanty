- dashboard: estoque_crtico
  title: Estoque_Crítico
  layout: newspaper
  elements:
  - title: Leads VS Aging VS Visitas
    name: Leads VS Aging VS Visitas
    model: datalake
    explore: estoque_critico_creditas_
    type: looker_scatter
    fields: [estoque.dias_em_estoque_, estoque.qtd_lead, estoque.qtd_visita, leads_dias_para_venda,
      critico_leads_por_dia, critico_dias_em_estoque]
    filters:
      critico_leads_por_dia: ''
      critico_dias_em_estoque: ''
    sorts: [estoque.qtd_lead desc]
    limit: 500
    dynamic_fields: [{dimension: critico_leads_por_dia, label: Critico_leads_por_dia,
        expression: 'if(${leads_dias_para_venda}>${estoque.qtd_lead_},"critico","normal")',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {dimension: leads_dias_para_venda, label: Leads_Dias  para
          venda, expression: "${estoque.dias_em_estoque_}*0.6", value_format: !!null '',
        value_format_name: !!null '', _kind_hint: dimension, _type_hint: number},
      {dimension: critico_dias_em_estoque, label: Critico_dias_em_estoque, expression: 'if(${estoque.dias_em_estoque_}>=120,"critico","normal")',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}]
    query_timezone: America/Buenos_Aires
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
    size_by_field: estoque.qtd_visita
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [dias_em_estoque_para_venda, critico_leads_por_dia, leads_dias_para_venda,
      critico_dias_em_estoque]
    listen:
      Estoque_critico_dias_em_estoque: estoque.critico_dias_em_estoque
      Estoque_critico_Leads_por_dia: estoque.critico_lead_por_dias
      UF: estoque.UF
      Cav: estoque.cav
    row: 0
    col: 0
    width: 16
    height: 9
  - title: Indicadores
    name: Indicadores
    model: datalake
    explore: estoque_critico_creditas_
    type: looker_grid
    fields: [estoque.modelo, estoque.versao, estoque.ano_modelo, estoque.placa, estoque.compra,
      estoque.fipe, estoque.categoria, estoque.link_anuncio, estoque.km, estoque.cav,
      estoque.preco_por, qtd_lead_, dias_em_estoque__]
    sorts: [qtd_lead_ desc]
    limit: 500
    dynamic_fields: [{table_calculation: leadsdias_estoque, label: Leads/Dias_Estoque,
        expression: "${qtd_lead_}/${dias_em_estoque__}", value_format: !!null '',
        value_format_name: decimal_1, is_disabled: false, _kind_hint: measure, _type_hint: number},
      {measure: dias_em_estoque__, based_on: estoque.dias_em_estoque_, type: sum,
        label: Dias_Em_Estoque__, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: qtd_lead_, based_on: estoque.qtd_lead_, type: sum, label: Qtd_Lead_,
        expression: !!null '', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}, {table_calculation: margem_anuncio,
        label: Margem_Anuncio, expression: "${estoque.preco_por}/${estoque.compra}-1",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: margem_fipe, label: Margem Fipe,
        expression: "${estoque.fipe}/${estoque.compra}-1", value_format: !!null '',
        value_format_name: percent_0, _kind_hint: dimension, _type_hint: number}]
    query_timezone: America/Buenos_Aires
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", estoque.modelo, estoque.versao, estoque.ano_modelo,
      estoque.km, estoque.cav, estoque.placa, estoque.preco_por, estoque.categoria,
      estoque.compra, estoque.fipe, qtd_lead_, dias_em_estoque__, estoque.link_anuncio,
      margem_fipe, margem_anuncio, leadsdias_estoque]
    show_totals: true
    show_row_totals: true
    series_labels:
      estoque.preco_por: Preco_Anuncio
    series_column_widths:
      dias_em_estoque__: 124
      estoque.modelo: 108
      estoque.compra: 83
      estoque.categoria: 75
      qtd_lead_: 100
    series_cell_visualizations:
      dias_em_estoque__:
        is_active: false
      qtd_lead_:
        is_active: false
    truncate_column_names: false
    hidden_fields:
    defaults_version: 1
    series_types: {}
    listen:
      Estoque_critico_dias_em_estoque: estoque.critico_dias_em_estoque
      Estoque_critico_Leads_por_dia: estoque.critico_lead_por_dias
      UF: estoque.UF
      Cav: estoque.cav
    row: 9
    col: 0
    width: 24
    height: 9
  - title: Informacoes
    name: Informacoes
    model: datalake
    explore: report_alteracao_precos
    type: looker_grid
    fields: [report_alteracao_precos.plate, report_alteracao_precos.semana, report_alteracao_precos.modelo,
      report_alteracao_precos.qtd_leads, report_alteracao_precos.adprice, report_alteracao_precos.preco_web_motors]
    sorts: [report_alteracao_precos.semana desc]
    limit: 500
    dynamic_fields: [{table_calculation: dif_webmotors, label: Dif_WebMotors, expression: "${report_alteracao_precos.adprice}/${report_alteracao_precos.preco_web_motors}-1",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: dimension,
        _type_hint: number}]
    query_timezone: America/Buenos_Aires
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
    column_order: ["$$$_row_numbers_$$$", report_alteracao_precos.plate, report_alteracao_precos.semana,
      report_alteracao_precos.modelo, report_alteracao_precos.qtd_leads, report_alteracao_precos.inventory_currentQuantity,
      report_alteracao_precos.adprice, report_alteracao_precos.preco_web_motors, dif_webmotors]
    listen:
      Placa: report_alteracao_precos.plate
    row: 32
    col: 0
    width: 24
    height: 8
  - name: Use o Filtro pela Placa
    type: text
    title_text: Use o Filtro pela Placa
    row: 18
    col: 0
    width: 24
    height: 2
  - title: Valor de Compra
    name: Valor de Compra
    model: datalake
    explore: estoque_critico_creditas_
    type: single_value
    fields: [estoque.compra, estoque.preco_por_]
    sorts: [estoque.compra desc]
    limit: 500
    dynamic_fields: [{table_calculation: margem_anuncio, label: Margem Anúncio, expression: "(${estoque.compra}/${estoque.preco_por_}-1)*-1",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: dimension,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
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
    show_null_points: true
    defaults_version: 1
    series_types: {}
    hidden_fields: [estoque.preco_por_]
    listen:
      Placa: estoque.placa
    row: 20
    col: 16
    width: 8
    height: 6
  - title: Estoque por categoria
    name: Estoque por categoria
    model: datalake
    explore: estoque_critico_creditas_
    type: looker_bar
    fields: [estoque.categoria, estoque.count]
    sorts: [estoque.count desc]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: estoque.count, id: estoque.count,
            name: Estoque}], showLabels: true, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    listen:
      Estoque_critico_dias_em_estoque: estoque.critico_dias_em_estoque
      Estoque_critico_Leads_por_dia: estoque.critico_lead_por_dias
      UF: estoque.UF
      Cav: estoque.cav
    row: 0
    col: 16
    width: 8
    height: 9
  - title: Leads VS Preco VS Semanas
    name: Leads VS Preco VS Semanas
    model: datalake
    explore: report_alteracao_precos
    type: looker_line
    fields: [report_alteracao_precos.semana, preco_anuncio, qtd_leads]
    sorts: [preco_anuncio desc]
    limit: 500
    dynamic_fields: [{measure: preco_anuncio, based_on: report_alteracao_precos.adprice,
        type: average, label: Preco_Anuncio, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: qtd_leads, based_on: report_alteracao_precos.qtd_leads, type: average,
        label: Qtd_Leads, expression: !!null '', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}]
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
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: preco_anuncio, id: preco_anuncio,
            name: Preco_Anuncio}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: qtd_leads, id: qtd_leads, name: Qtd_Leads}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Placa: report_alteracao_precos.plate
    row: 26
    col: 0
    width: 8
    height: 6
  - title: Valor Anúncio
    name: Valor Anúncio
    model: datalake
    explore: estoque_critico_creditas_
    type: single_value
    fields: [estoque.preco_por_]
    sorts: [estoque.preco_por_]
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
    listen:
      Placa: estoque.placa
    row: 26
    col: 16
    width: 8
    height: 6
  - title: Comparativo de Precos
    name: Comparativo de Precos
    model: datalake
    explore: estoque_critico_creditas_
    type: looker_column
    fields: [media_wb, valor_anuncio, fipe, media_venda]
    limit: 500
    dynamic_fields: [{measure: media_wb, based_on: estoque.webmotors_average, type: average,
        label: Media_WB, expression: !!null '', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}, {measure: valor_anuncio, based_on: estoque.preco_por_,
        type: average, label: Valor_Anuncio, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: fipe, based_on: estoque.fipe, type: average, label: Fipe, expression: !!null '',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {measure: media_venda, based_on: estoque.Media_Venda,
        type: average, label: Média_Venda, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: media_wb, id: media_wb,
            name: Media_WB}, {axisId: valor_anuncio, id: valor_anuncio, name: Valor_Anuncio},
          {axisId: fipe, id: fipe, name: Fipe}, {axisId: media_venda, id: media_venda,
            name: Média_Venda}], showLabels: true, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    label_value_format: "#"
    label_color: []
    column_spacing_ratio: 0.5
    defaults_version: 1
    listen:
      Placa: estoque.placa
    row: 20
    col: 0
    width: 8
    height: 6
  - title: Origem
    name: Origem
    model: datalake
    explore: estoque_critico_creditas_
    type: single_value
    fields: [estoque.origem]
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
      Placa: estoque.placa
    row: 26
    col: 8
    width: 8
    height: 6
  - title: Dias em Estoque
    name: Dias em Estoque
    model: datalake
    explore: estoque_critico_creditas_
    type: single_value
    fields: [estoque.dias_em_estoque]
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
      Placa: estoque.placa
    row: 20
    col: 8
    width: 8
    height: 6
