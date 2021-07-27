- dashboard: monitoramentomtricas__creditas
  title: Monitoramento-Métricas - Creditas
  layout: newspaper
  preferred_viewer: dashboards-next
  refresh: 10 hours
  elements:
  - title: Leads Total
    name: Leads Total
    model: datalake
    explore: creditas_leads_compradores
    type: looker_line
    fields: [creditas_leads_compradores.data_criacao_lead_date, creditas_leads_compradores.count]
    fill_fields: [creditas_leads_compradores.data_criacao_lead_date]
    filters: {}
    sorts: [creditas_leads_compradores.data_criacao_lead_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: media_movel, label: Media movel, expression: 'mean(offset_list(${creditas_leads_compradores.count},0,7))',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: is_null, label: Is null, expression: 'is_null(${creditas_leads_compradores.count})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: yesno}, {table_calculation: alarme, label: Alarme, expression: 'if(${is_null},0,1)',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
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
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: creditas_leads_compradores.count,
            id: creditas_leads_compradores.count, name: Leads Compra}, {axisId: media_movel, id: media_movel,
            name: Media movel}], showLabels: true, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    font_size: '20'
    series_colors:
      media_movel: "#080412"
      is_null: "#FFFFFF"
      alarme: "#FFF"
    defaults_version: 1
    hidden_fields: [is_null]
    listen:
      Data Criacao Lead Date: creditas_leads_compradores.data_criacao_lead_date
    row: 2
    col: 0
    width: 24
    height: 6
  - title: Monitoramento Visitas Criadas
    name: Monitoramento Visitas Criadas
    model: datalake
    explore: visita
    type: looker_line
    fields: [visita.count, visita.data_visita_criada_date]
    fill_fields: [visita.data_visita_criada_date]
    filters: {}
    sorts: [visita.data_visita_criada_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: media_movel, label: Media movel, expression: 'mean(offset_list(${visita.count},0,7))',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: is_null, label: Is null, expression: 'is_null(${visita.count})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: yesno}, {table_calculation: alarme, label: Alarme, expression: 'if(${is_null},0,1)

          ', value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
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
    y_axes: [{label: '', orientation: left, series: [{axisId: visita.count, id: visita.count,
            name: Visita}, {axisId: media_movel, id: media_movel, name: Media movel}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hide_legend: false
    font_size: '20'
    series_colors:
      media_movel: "#0d040b"
      is_null: "#FFFFFF"
      alarme: "#FFFFFF"
    defaults_version: 1
    listen:
      Data Criacao Lead Date: visita.data_visita_criada_date
    row: 20
    col: 12
    width: 12
    height: 9
  - title: Monitoramento Vendas
    name: Monitoramento Vendas
    model: datalake
    explore: vendas_oficial
    type: looker_line
    fields: [vendas_oficial.count, vendas_oficial.data_vendido_date]
    fill_fields: [vendas_oficial.data_vendido_date]
    filters: {}
    sorts: [vendas_oficial.data_vendido_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: media_movel, label: Media movel, expression: 'mean(offset_list(${vendas_oficial.count},0,7))',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: is_null, label: Is null, expression: 'is_null(${vendas_oficial.count})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: yesno}, {table_calculation: alarme, label: Alarme, expression: 'if(${is_null},0,1)',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
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
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: vendas_oficial.count,
            id: vendas_oficial.count, name: Vendas Oficial}, {axisId: media_movel,
            id: media_movel, name: Media movel}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    hide_legend: false
    font_size: '20'
    series_colors:
      media_movel: "#0a0309"
      is_null: "#FFF"
      alarme: "#FFF"
    defaults_version: 1
    listen:
      Data Criacao Lead Date: vendas_oficial.data_vendido_date
    row: 20
    col: 0
    width: 12
    height: 9
  - title: Monitoramento Simulações
    name: Monitoramento Simulações
    model: Funil
    explore: funil_lead_aquisicao
    type: looker_line
    fields: [simulacoes, funil_lead_aquisicao.data_date]
    fill_fields: [funil_lead_aquisicao.data_date]
    filters: {}
    sorts: [funil_lead_aquisicao.data_date desc]
    limit: 500
    dynamic_fields: [{dimension: simulacao, label: simulacao, expression: 'if(${funil_lead_aquisicao.etapa}="SIMULACAO",1,0)',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: number}, {measure: simulacoes, based_on: simulacao, type: sum,
        label: simulacoes, expression: !!null '', value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: media_movel,
        label: Media movel, expression: 'mean(offset_list(${simulacoes},0,7))', value_format: !!null '',
        value_format_name: decimal_0, _kind_hint: measure, _type_hint: number}]
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
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: simulacoes, id: simulacoes,
            name: simulacoes}, {axisId: media_movel, id: media_movel, name: Media
              movel}], showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    font_size: '20'
    series_colors:
      media_movel: "#0f050d"
    defaults_version: 1
    listen:
      Data Criacao Lead Date: funil_lead_aquisicao.data_date
    row: 31
    col: 0
    width: 24
    height: 6
  - title: Monitoramento Leads Proprietario
    name: Monitoramento Leads Proprietario
    model: datalake
    explore: leads_proprietario
    type: looker_line
    fields: [leads_proprietario.data_criacao_lead_date, leads_proprietario.count]
    fill_fields: [leads_proprietario.data_criacao_lead_date]
    filters: {}
    sorts: [leads_proprietario.data_criacao_lead_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: media_movel, label: Media movel, expression: "mean(offset_list(${leads_proprietario.count},0,7))\n\
          \n", value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: is_null, label: Is null, expression: 'is_null(${leads_proprietario.count})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: yesno}, {table_calculation: alarme, label: Alarme, expression: 'if(${is_null},0,1)',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
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
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: leads_proprietario.count,
            id: leads_proprietario.count, name: Leads Proprietario}, {axisId: media_movel,
            id: media_movel, name: Media movel}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    font_size: '20'
    series_colors:
      media_movel: "#0f050d"
      is_null: "#FFFFFF"
      alarme: "#FFFFFF"
    defaults_version: 1
    listen:
      Data Criacao Lead Date: leads_proprietario.data_criacao_lead_date
    row: 37
    col: 0
    width: 24
    height: 6
  - name: Monitoramento Métricas Comprador
    type: text
    title_text: Monitoramento Métricas Comprador
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 2
  - name: Monitoramento Métricas Proprietario
    type: text
    title_text: Monitoramento Métricas Proprietario
    subtitle_text: ''
    body_text: ''
    row: 29
    col: 0
    width: 24
    height: 2
  - title: Leads Site Volanty
    name: Leads Site Volanty
    model: datalake
    explore: creditas_leads_compradores
    type: looker_line
    fields: [creditas_leads_compradores.data_criacao_lead_date, creditas_leads_compradores.count]
    fill_fields: [creditas_leads_compradores.data_criacao_lead_date]
    filters:
      creditas_leads_compradores.referencia_lead: SITE VOLANTY,Site Volanty
    sorts: [creditas_leads_compradores.data_criacao_lead_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: media_movel, label: Media movel, expression: 'mean(offset_list(${creditas_leads_compradores.count},0,7))',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
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
    show_null_points: false
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: creditas_leads_compradores.count,
            id: creditas_leads_compradores.count, name: Leads Compra}, {axisId: media_movel, id: media_movel,
            name: Media movel}], showLabels: true, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    font_size: '20'
    series_colors:
      media_movel: "#080412"
    defaults_version: 1
    listen:
      Data Criacao Lead Date: creditas_leads_compradores.data_criacao_lead_date
    row: 8
    col: 0
    width: 8
    height: 6
  - title: Leads WebMotors
    name: Leads WebMotors
    model: datalake
    explore: creditas_leads_compradores
    type: looker_line
    fields: [creditas_leads_compradores.data_criacao_lead_date, creditas_leads_compradores.count]
    fill_fields: [creditas_leads_compradores.data_criacao_lead_date]
    filters:
      creditas_leads_compradores.referencia_lead: WebMotors
    sorts: [creditas_leads_compradores.data_criacao_lead_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: media_movel, label: Media movel, expression: 'mean(offset_list(${creditas_leads_compradores.count},0,7))',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
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
    show_null_points: false
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: creditas_leads_compradores.count,
            id: creditas_leads_compradores.count, name: Leads Compra}, {axisId: media_movel, id: media_movel,
            name: Media movel}], showLabels: true, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    font_size: '20'
    series_colors:
      media_movel: "#080412"
    defaults_version: 1
    listen:
      Data Criacao Lead Date: creditas_leads_compradores.data_criacao_lead_date
    row: 8
    col: 8
    width: 8
    height: 6
  - title: Leads OLX
    name: Leads OLX
    model: datalake
    explore: creditas_leads_compradores
    type: looker_line
    fields: [creditas_leads_compradores.data_criacao_lead_date, creditas_leads_compradores.count]
    fill_fields: [creditas_leads_compradores.data_criacao_lead_date]
    filters:
      creditas_leads_compradores.referencia_lead: OLX
    sorts: [creditas_leads_compradores.data_criacao_lead_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: media_movel, label: Media movel, expression: 'mean(offset_list(${creditas_leads_compradores.count},0,7))',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
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
    show_null_points: false
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: creditas_leads_compradores.count,
            id: creditas_leads_compradores.count, name: Leads Compra}, {axisId: media_movel, id: media_movel,
            name: Media movel}], showLabels: true, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    font_size: '20'
    series_colors:
      media_movel: "#080412"
    defaults_version: 1
    listen:
      Data Criacao Lead Date: creditas_leads_compradores.data_criacao_lead_date
    row: 8
    col: 16
    width: 8
    height: 6
  - title: Leads Atendimento
    name: Leads Atendimento
    model: datalake
    explore: creditas_leads_compradores
    type: looker_line
    fields: [creditas_leads_compradores.data_criacao_lead_date, creditas_leads_compradores.count]
    fill_fields: [creditas_leads_compradores.data_criacao_lead_date]
    filters:
      creditas_leads_compradores.referencia_lead: "%Atendimento%"
    sorts: [creditas_leads_compradores.data_criacao_lead_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: media_movel, label: Media movel, expression: 'mean(offset_list(${creditas_leads_compradores.count},0,7))',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
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
    show_null_points: false
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: creditas_leads_compradores.count,
            id: creditas_leads_compradores.count, name: Leads Compra}, {axisId: media_movel, id: media_movel,
            name: Media movel}], showLabels: true, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    font_size: '20'
    series_colors:
      media_movel: "#080412"
    label_color: []
    defaults_version: 1
    listen:
      Data Criacao Lead Date: creditas_leads_compradores.data_criacao_lead_date
    row: 14
    col: 0
    width: 8
    height: 6
  - title: Leads Facebook
    name: Leads Facebook
    model: datalake
    explore: creditas_leads_compradores
    type: looker_line
    fields: [creditas_leads_compradores.data_criacao_lead_date, creditas_leads_compradores.count]
    fill_fields: [creditas_leads_compradores.data_criacao_lead_date]
    filters:
      creditas_leads_compradores.referencia_lead: '"FACEBOOK_LEADS_ADS"'
    sorts: [creditas_leads_compradores.data_criacao_lead_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: media_movel, label: Media movel, expression: 'mean(offset_list(${creditas_leads_compradores.count},0,7))',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
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
    show_null_points: false
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: creditas_leads_compradores.count,
            id: creditas_leads_compradores.count, name: Leads Compra}, {axisId: media_movel, id: media_movel,
            name: Media movel}], showLabels: true, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    font_size: '20'
    series_colors:
      media_movel: "#080412"
    defaults_version: 1
    listen:
      Data Criacao Lead Date: creditas_leads_compradores.data_criacao_lead_date
    row: 14
    col: 16
    width: 8
    height: 6
  - title: Leads WhatsApp
    name: Leads WhatsApp
    model: datalake
    explore: creditas_leads_compradores
    type: looker_line
    fields: [creditas_leads_compradores.data_criacao_lead_date, creditas_leads_compradores.count]
    fill_fields: [creditas_leads_compradores.data_criacao_lead_date]
    filters:
      creditas_leads_compradores.referencia_lead: "%Whatsapp%"
    sorts: [creditas_leads_compradores.data_criacao_lead_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: media_movel, label: Media movel, expression: 'mean(offset_list(${creditas_leads_compradores.count},0,7))',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
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
    show_null_points: false
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: creditas_leads_compradores.count,
            id: creditas_leads_compradores.count, name: Leads Compra}, {axisId: media_movel, id: media_movel,
            name: Media movel}], showLabels: true, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    font_size: '20'
    series_colors:
      media_movel: "#080412"
    defaults_version: 1
    listen:
      Data Criacao Lead Date: creditas_leads_compradores.data_criacao_lead_date
    row: 14
    col: 8
    width: 8
    height: 6
  - title: Leads Proprietario Facebook
    name: Leads Proprietario Facebook
    model: datalake
    explore: leads_proprietario
    type: looker_line
    fields: [leads_proprietario.data_criacao_lead_date, leads_proprietario.count]
    fill_fields: [leads_proprietario.data_criacao_lead_date]
    filters:
      leads_proprietario.media_utmsource: facebook
    sorts: [leads_proprietario.data_criacao_lead_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: media_movel, label: Media movel, expression: 'mean(offset_list(${leads_proprietario.count},0,7))',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
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
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: leads_proprietario.count,
            id: leads_proprietario.count, name: Leads Proprietario}, {axisId: media_movel,
            id: media_movel, name: Media movel}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    font_size: '20'
    series_colors:
      media_movel: "#0f050d"
    defaults_version: 1
    listen:
      Data Criacao Lead Date: leads_proprietario.data_criacao_lead_date
    row: 43
    col: 8
    width: 8
    height: 6
  - title: Leads Proprietario Google
    name: Leads Proprietario Google
    model: datalake
    explore: leads_proprietario
    type: looker_line
    fields: [leads_proprietario.data_criacao_lead_date, leads_proprietario.count]
    fill_fields: [leads_proprietario.data_criacao_lead_date]
    filters:
      leads_proprietario.media_utmsource: google
    sorts: [leads_proprietario.data_criacao_lead_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: media_movel, label: Media movel, expression: 'mean(offset_list(${leads_proprietario.count},0,7))',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
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
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: leads_proprietario.count,
            id: leads_proprietario.count, name: Leads Proprietario}, {axisId: media_movel,
            id: media_movel, name: Media movel}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    font_size: '20'
    series_colors:
      media_movel: "#0f050d"
    defaults_version: 1
    listen:
      Data Criacao Lead Date: leads_proprietario.data_criacao_lead_date
    row: 43
    col: 16
    width: 8
    height: 6
  - title: Monitoramento Avaliações
    name: Monitoramento Avaliações
    model: datalake
    explore: avaliacao
    type: looker_line
    fields: [avaliacao.data_criacao_avaliacao_date, avaliacao.count]
    fill_fields: [avaliacao.data_criacao_avaliacao_date]
    filters: {}
    sorts: [avaliacao.data_criacao_avaliacao_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: media_movel, label: Media movel, expression: "\n\
          mean(offset_list(${avaliacao.count},0,7))", value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, _type_hint: number}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: avaliacao.count, id: avaliacao.count,
            name: Avaliacao}, {axisId: media_movel, id: media_movel, name: Media movel}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    font_size: '20'
    series_colors:
      media_movel: "#170714"
    defaults_version: 1
    listen:
      Data Criacao Lead Date: avaliacao.data_criacao_avaliacao_date
    row: 49
    col: 0
    width: 12
    height: 7
  - title: Monitoramento Aquisições
    name: Monitoramento Aquisições
    model: datalake
    explore: pedido_compras
    type: looker_line
    fields: [pedido_compras.data_criacao_date, pedido_compras.count]
    fill_fields: [pedido_compras.data_criacao_date]
    filters: {}
    sorts: [pedido_compras.data_criacao_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: media_movel, label: Media movel, expression: 'mean(offset_list(${pedido_compras.count},0,7))',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
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
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: pedido_compras.count,
            id: pedido_compras.count, name: Pedido Compras}, {axisId: media_movel,
            id: media_movel, name: Media movel}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    font_size: '20'
    series_colors:
      media_movel: "#0d040b"
    defaults_version: 1
    listen:
      Data Criacao Lead Date: pedido_compras.data_criacao_date
    row: 49
    col: 12
    width: 12
    height: 7
  - title: Leads Proprietario Orgânico
    name: Leads Proprietario Orgânico
    model: datalake
    explore: leads_proprietario
    type: looker_line
    fields: [leads_proprietario.data_criacao_lead_date, leads_proprietario.count]
    fill_fields: [leads_proprietario.data_criacao_lead_date]
    filters:
      leads_proprietario.media_utmsource: 'NULL'
    sorts: [leads_proprietario.data_criacao_lead_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: media_movel, label: Media movel, expression: 'mean(offset_list(${leads_proprietario.count},0,7))',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number, is_disabled: false}]
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
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: leads_proprietario.count,
            id: leads_proprietario.count, name: Leads Proprietario}, {axisId: media_movel,
            id: media_movel, name: Media movel}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    font_size: '20'
    series_colors:
      media_movel: "#0f050d"
    defaults_version: 1
    listen:
      Data Criacao Lead Date: leads_proprietario.data_criacao_lead_date
    row: 43
    col: 0
    width: 8
    height: 6
  - title: Leads Proprietario Site Volanty
    name: Leads Proprietario Site Volanty
    model: datalake
    explore: leads_proprietario
    type: looker_line
    fields: [leads_proprietario.data_criacao_lead_date, leads_proprietario.count]
    fill_fields: [leads_proprietario.data_criacao_lead_date]
    filters:
      leads_proprietario.media_origin: site-volanty
    sorts: [leads_proprietario.data_criacao_lead_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: media_movel, label: Media movel, expression: 'mean(offset_list(${leads_proprietario.count},0,7))',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: is_null, label: is null, expression: 'is_null(${leads_proprietario.count})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: yesno}, {table_calculation: alarme, label: Alarme, expression: 'if(${is_null},0,1)',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
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
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: leads_proprietario.count,
            id: leads_proprietario.count, name: Leads Proprietario}, {axisId: media_movel,
            id: media_movel, name: Media movel}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    font_size: '20'
    series_colors:
      media_movel: "#0f050d"
      is_null: "#FFF"
      calculation_3: "#FFF"
      alarme: "#FFF"
    defaults_version: 1
    listen:
      Data Criacao Lead Date: leads_proprietario.data_criacao_lead_date
    row: 56
    col: 0
    width: 12
    height: 7
  - title: Leads Proprietario APP
    name: Leads Proprietario APP
    model: datalake
    explore: leads_proprietario
    type: looker_line
    fields: [leads_proprietario.data_criacao_lead_date, leads_proprietario.count]
    fill_fields: [leads_proprietario.data_criacao_lead_date]
    filters:
      leads_proprietario.media_origin: APP
    sorts: [leads_proprietario.data_criacao_lead_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: media_movel, label: Media movel, expression: 'mean(offset_list(${leads_proprietario.count},0,7))',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
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
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: leads_proprietario.count,
            id: leads_proprietario.count, name: Leads Proprietario}, {axisId: media_movel,
            id: media_movel, name: Media movel}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    font_size: '20'
    series_colors:
      media_movel: "#0f050d"
    defaults_version: 1
    listen:
      Data Criacao Lead Date: leads_proprietario.data_criacao_lead_date
    row: 56
    col: 12
    width: 12
    height: 7
  - title: Monitoramento Indicarrão
    name: Monitoramento Indicarrão
    model: datalake
    explore: indicarrao
    type: looker_line
    fields: [indicarrao.data_criacao_date, indicarrao.count]
    fill_fields: [indicarrao.data_criacao_date]
    filters: {}
    sorts: [indicarrao.data_criacao_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: media_movel, label: Media movel, expression: 'mean(offset_list(${indicarrao.count},0,7))',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: is_null, label: is null, expression: 'is_null(${indicarrao.count})',
        value_format: !!null '', value_format_name: !!null '', is_disabled: false,
        _kind_hint: measure, _type_hint: yesno}, {table_calculation: alarme, label: Alarme,
        expression: 'if(${is_null},0,1)', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}]
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
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: indicarrao.count, id: indicarrao.count,
            name: Indicarrao}, {axisId: media_movel, id: media_movel, name: Media
              movel}], showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    font_size: '20'
    series_colors:
      media_movel: "#1a0816"
      calculation_3: "#FFFFFF"
      alarme: "#FFF"
    defaults_version: 1
    hidden_fields: [is_null]
    listen:
      Data Criacao Lead Date: indicarrao.data_criacao_date
    row: 63
    col: 0
    width: 24
    height: 7
  - title: Monitoramento Leads Proprietario do indicarrao
    name: Monitoramento Leads Proprietario do indicarrao
    model: datalake
    explore: leads_proprietario
    type: looker_line
    fields: [leads_proprietario.data_criacao_lead_date, leads_proprietario.count]
    fill_fields: [leads_proprietario.data_criacao_lead_date]
    filters:
      leads_proprietario.preLeadId: "-NULL,-EMPTY"
    sorts: [leads_proprietario.data_criacao_lead_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: media_movel, label: Media movel, expression: 'mean(offset_list(${leads_proprietario.count},0,7))',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: is_null, label: is null, expression: 'is_null(${leads_proprietario.count})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: yesno}, {table_calculation: alarme, label: Alarme, expression: 'if(${is_null},0,1)',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
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
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: leads_proprietario.count,
            id: leads_proprietario.count, name: Leads Proprietario}, {axisId: media_movel,
            id: media_movel, name: Media movel}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    font_size: '20'
    series_colors:
      media_movel: "#0f050d"
    defaults_version: 1
    hidden_series: [is_null, alarme]
    listen:
      Data Criacao Lead Date: leads_proprietario.data_criacao_lead_date
    row: 70
    col: 0
    width: 24
    height: 6
  filters:
  - name: Data Criacao Lead Date
    title: Data Criacao Lead Date
    type: field_filter
    default_value: 30 day ago for 30 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: datalake
    explore: creditas_leads_compradores
    listens_to_filters: []
    field: creditas_leads_compradores.data_criacao_lead_date
