view: compras_selecionados {
  sql_table_name: `volanty-production.spreedsheets_data.Compras_Selecionados`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: a {
    type: string
    sql: ${TABLE}.a ;;
  }

  dimension: ano_fab {
    type: number
    sql: ${TABLE}.Ano_fab ;;
  }

  dimension: ano_mod {
    type: number
    sql: ${TABLE}.Ano_mod ;;
  }

  dimension: b {
    type: string
    sql: ${TABLE}.b ;;
  }

  dimension: cav_compra {
    type: string
    sql: ${TABLE}.CAV_Compra ;;
  }

  dimension: cav_destino_1 {
    type: string
    sql: ${TABLE}.CAV_destino_1 ;;
  }

  dimension: cav_destino_2 {
    type: string
    sql: ${TABLE}.CAV_destino_2 ;;
  }

  dimension: cav_destino_3 {
    type: string
    sql: ${TABLE}.CAV_destino_3 ;;
  }

  dimension: cav_destino_4 {
    type: string
    sql: ${TABLE}.CAV_destino_4 ;;
  }

  dimension: cav_venda {
    type: string
    sql: ${TABLE}.CAV_venda ;;
  }

  dimension: fornecedor {
    type: string
    sql: ${TABLE}.fornecedor ;;
  }

  dimension: chassi {
    type: string
    sql: ${TABLE}.Chassi ;;
  }

  dimension: cnpj {
    type: string
    sql: ${TABLE}.CNPJ ;;
  }

  dimension: consulta {
    type: number
    sql: ${TABLE}.Consulta ;;
  }

  dimension_group: data_anuncio {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Data_anuncio ;;
  }

  dimension_group: data_compra {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Data_compra ;;
  }

  dimension_group: data_transf_1 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Data_transf_1 ;;
  }

  dimension_group: data_transf_2 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Data_transf_2 ;;
  }

  dimension_group: data_transf_3 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Data_transf_3 ;;
  }

  dimension: data_transf_4 {
    type: string
    sql: ${TABLE}.Data_transf_4 ;;
  }

  dimension_group: data_venda {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Data_venda ;;
  }

  dimension: debitos {
    type: number
    sql: ${TABLE}.Debitos ;;
  }

  dimension: debitos_pos {
    type: number
    sql: ${TABLE}.Debitos_pos ;;
  }

  dimension: despachante {
    type: number
    sql: ${TABLE}.Despachante ;;
  }

  dimension: dias_anunciado {
    type: number
    sql: ${TABLE}.Dias_anunciado ;;
  }

  dimension: dias_em_estoque {
    type: number
    sql: ${TABLE}.Dias_em_estoque ;;
  }

  dimension: fornecedores_pos {
    type: number
    sql: ${TABLE}.Fornecedores_pos ;;
  }

  dimension: garantia {
    type: number
    sql: ${TABLE}.Garantia ;;
  }

  dimension: giro_anuncio {
    type: number
    sql: ${TABLE}.Giro_anuncio ;;
  }

  dimension: giro_total {
    type: number
    sql: ${TABLE}.Giro_total ;;
  }

  dimension: gross_margin_1 {
    type: number
    sql: ${TABLE}.Gross_margin_1 ;;
  }

  dimension: gross_spread_1 {
    type: number
    sql: ${TABLE}.Gross_spread_1 ;;
  }

  dimension: icms_1 {
    type: number
    sql: ${TABLE}.ICMS_1 ;;
  }

  dimension: icms_2 {
    type: number
    sql: ${TABLE}.ICMS_2 ;;
  }

  dimension: icms_3 {
    type: number
    sql: ${TABLE}.ICMS_3 ;;
  }

  dimension: icms_4 {
    type: number
    sql: ${TABLE}.ICMS_4 ;;
  }

  dimension: icsm {
    type: number
    sql: ${TABLE}.ICSM ;;
  }

  dimension: km {
    type: number
    sql: ${TABLE}.KM ;;
  }

  dimension: laudo {
    type: number
    sql: ${TABLE}.Laudo ;;
  }

  dimension: m__s_compra {
    type: string
    sql: ${TABLE}.M__s_compra ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.Marca ;;
  }

  dimension: mes_anuncio {
    type: string
    sql: ${TABLE}.Mes_anuncio ;;
  }

  dimension: mes_icms_1 {
    type: string
    sql: ${TABLE}.Mes_ICMS_1 ;;
  }

  dimension: mes_icms_2 {
    type: string
    sql: ${TABLE}.Mes_ICMS_2 ;;
  }

  dimension: mes_icms_3 {
    type: string
    sql: ${TABLE}.Mes_ICMS_3 ;;
  }

  dimension: mes_icms_4 {
    type: string
    sql: ${TABLE}.Mes_ICMS_4 ;;
  }

  dimension: mes_venda {
    type: string
    sql: ${TABLE}.Mes_venda ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.Modelo ;;
  }

  dimension: n_nfe_compra {
    type: number
    sql: ${TABLE}.N_NFe_compra ;;
  }

  dimension: n_nfe_venda {
    type: string
    sql: ${TABLE}.N_NFe_venda ;;
  }

  dimension: negociado {
    type: number
    sql: ${TABLE}.Negociado ;;
  }

  dimension: nfe_compra {
    type: number
    sql: ${TABLE}.NFe_compra ;;
  }

  dimension: nfe_transf_1 {
    type: number
    sql: ${TABLE}.NFe_transf_1 ;;
  }

  dimension: nfe_transf_2 {
    type: number
    sql: ${TABLE}.NFe_transf_2 ;;
  }

  dimension: nfe_transf_3 {
    type: number
    sql: ${TABLE}.NFe_transf_3 ;;
  }

  dimension: nfe_transf_4 {
    type: string
    sql: ${TABLE}.NFe_transf_4 ;;
  }

  dimension: nfe_venda {
    type: number
    sql: ${TABLE}.NFe_venda ;;
  }

  dimension: operacao {
    type: string
    sql: ${TABLE}.Operacao ;;
  }

  dimension: origem {
    type: string
    sql: ${TABLE}.Origem ;;
  }

  dimension: pis_e_cofins {
    type: number
    sql: ${TABLE}.PIS_e_Cofins ;;
  }

  dimension: placa_1 {
    type: string
    sql: ${TABLE}.Placa_1 ;;
  }

  dimension: placa_2 {
    type: string
    sql: ${TABLE}.Placa_2 ;;
  }

  dimension: prazo_anuncio {
    type: number
    sql: ${TABLE}.Prazo_anuncio ;;
  }

  dimension: preparacao {
    type: number
    sql: ${TABLE}.Preparacao ;;
  }

  dimension: renavam {
    type: number
    sql: ${TABLE}.Renavam ;;
  }

  dimension: reparo {
    type: number
    sql: ${TABLE}.Reparo ;;
  }

  dimension: repasse {
    type: number
    sql: ${TABLE}.Repasse ;;
  }

  dimension: reservado_x_venda {
    type: number
    sql: ${TABLE}.Reservado_x_Venda ;;
  }

  dimension: revisao {
    type: number
    sql: ${TABLE}.Revisao ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: total_compra {
    type: number
    sql: ${TABLE}.Total_compra ;;
  }

  dimension: total_custo {
    type: number
    sql: ${TABLE}.Total_custo ;;
  }

  dimension: total_impostos {
    type: number
    sql: ${TABLE}.Total_impostos ;;
  }

  dimension: transporte {
    type: number
    sql: ${TABLE}.Transporte ;;
  }

  dimension: uf_compra {
    type: string
    sql: ${TABLE}.UF_compra ;;
  }

  dimension: uf_destino_1 {
    type: string
    sql: ${TABLE}.UF_destino_1 ;;
  }

  dimension: uf_destino_2 {
    type: string
    sql: ${TABLE}.UF_destino_2 ;;
  }

  dimension: uf_destino_3 {
    type: string
    sql: ${TABLE}.UF_destino_3 ;;
  }

  dimension: uf_destino_4 {
    type: string
    sql: ${TABLE}.UF_destino_4 ;;
  }

  dimension: uf_venda {
    type: string
    sql: ${TABLE}.UF_venda ;;
  }

  dimension: valor_anuncio {
    type: number
    sql: ${TABLE}.Valor_anuncio ;;
  }

  dimension: vers__o {
    type: string
    sql: ${TABLE}.Vers__o ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
