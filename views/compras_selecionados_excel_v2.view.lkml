view: compras_selecionados_excel_v2 {
  sql_table_name: `volanty-production.spreedsheets_data.compras_selecionados_excelV2`
    ;;
  drill_fields: [id]


  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: ano_fab {
    type: number
    sql: ${TABLE}.ano_fab ;;
  }

  dimension: ano_modelo {
    type: number
    sql: ${TABLE}.ano_modelo ;;
  }

  dimension: bo_aportado {
    type: string
    sql: ${TABLE}.bo_aportado ;;
  }

  dimension: cav_captacao {
    type: string
    sql: ${TABLE}.cav_captacao ;;
  }

  dimension: cav_showroom {
    type: string
    sql: ${TABLE}.cav_showroom ;;
  }

  dimension: chassi {
    type: string
    sql: ${TABLE}.chassi ;;
  }

  dimension: consulta_ve__culo {
    type: number
    sql: ${TABLE}.consulta_ve__culo ;;
  }

  dimension: custo_revisao {
    type: number
    sql: ${TABLE}.custo_revisao ;;
  }

  dimension: custo_total {
    type: number
    sql: ${TABLE}.custo_total ;;
  }

  dimension: custos_preparacao {
    type: number
    sql: ${TABLE}.custos_preparacao ;;
  }

  dimension: custos_reparo {
    type: number
    sql: ${TABLE}.custos_reparo ;;
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
    sql: ${TABLE}.data_anuncio ;;
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
    sql: ${TABLE}.data_compra ;;
  }

  dimension_group: data_nf_remessa {
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
    sql: ${TABLE}.data_nf_remessa ;;
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
    sql: ${TABLE}.data_venda ;;
  }

  dimension: debitos {
    type: number
    sql: ${TABLE}.debitos ;;
  }

  dimension: debitos_pos_compra {
    type: number
    sql: ${TABLE}.debitos_pos_compra ;;
  }

  dimension: debitos_pos_fornecedores {
    type: number
    sql: ${TABLE}.debitos_pos_fornecedores ;;
  }

  dimension: despachante {
    type: number
    sql: ${TABLE}.despachante ;;
  }

  dimension: dias_anunciado {
    type: number
    sql: ${TABLE}.dias_anunciado ;;
  }

  dimension: dias_em_estoque {
    type: number
    sql: ${TABLE}.dias_em_estoque ;;
  }

  dimension: garantia {
    type: number
    sql: ${TABLE}.garantia ;;
  }

  dimension: icms {
    type: number
    sql: ${TABLE}.icms ;;
  }

  dimension: icms_remessa {
    type: number
    sql: ${TABLE}.icms_remessa ;;
  }

  dimension: impostos {
    type: number
    sql: ${TABLE}.impostos ;;
  }

  dimension: km {
    type: number
    sql: ${TABLE}.km ;;
  }

  dimension: laudo {
    type: number
    sql: ${TABLE}.laudo ;;
  }

  dimension: m__s_ano_compra {
    type: string
    sql: ${TABLE}.m__s_ano_compra ;;
  }

  dimension: m__s_icms_remessa {
    type: string
    sql: ${TABLE}.m__s_icms_remessa ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: margem_bruta {
    type: number
    sql: ${TABLE}.margem_bruta ;;
  }

  dimension: margem_de_cont_ {
    type: number
    sql: ${TABLE}.margem_de_cont_ ;;
  }

  dimension: margem_l__quida {
    type: number
    sql: ${TABLE}.margem_l__quida ;;
  }

  dimension: mes_ano_anuncio {
    type: string
    sql: ${TABLE}.mes_ano_anuncio ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: nf_de_remessa {
    type: string
    sql: ${TABLE}.nf_de_remessa ;;
  }

  dimension: nfe_compra {
    type: number
    sql: ${TABLE}.nfe_compra ;;
  }

  dimension: origem {
    type: string
    sql: ${TABLE}.origem ;;
  }

  dimension: pis_e_cofins {
    type: number
    sql: ${TABLE}.pis_e_cofins ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  dimension: prazo_para_anuncio {
    type: number
    sql: ${TABLE}.prazo_para_anuncio ;;
  }

  dimension: prefeitura {
    type: string
    sql: ${TABLE}.prefeitura ;;
  }

  dimension: qtd {
    type: string
    sql: ${TABLE}.QTD ;;
  }

  dimension: quitacao_finan_ {
    type: number
    sql: ${TABLE}.quitacao_finan_ ;;
  }

  dimension: renavam {
    type: number
    sql: ${TABLE}.renavam ;;
  }

  dimension: repasse_ao_proprietario {
    type: number
    sql: ${TABLE}.repasse_ao_proprietario ;;
  }

  dimension: situacao {
    type: string
    sql: ${TABLE}.situacao ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: total_compra {
    type: number
    sql: ${TABLE}.total_compra ;;
  }

  dimension: total_negociado {
    type: number
    sql: ${TABLE}.total_negociado ;;
  }

  dimension: total_outros {
    type: number
    sql: ${TABLE}.total_outros ;;
  }

  dimension: transporte {
    type: number
    sql: ${TABLE}.transporte ;;
  }

  dimension: uf {
    type: string
    sql: ${TABLE}.uf ;;
  }

  dimension: valor_anuncio {
    type: number
    sql: ${TABLE}.valor_anuncio ;;
  }

  dimension: valor_margem_bruta {
    type: number
    sql: ${TABLE}.valor_margem_bruta ;;
  }

  dimension: valor_margem_de_cont_ {
    type: number
    sql: ${TABLE}.valor_margem_de_cont_ ;;
  }

  dimension: valor_margem_l__quida {
    type: number
    sql: ${TABLE}.valor_margem_l__quida ;;
  }

  dimension: valor_nfe {
    type: number
    sql: ${TABLE}.valor_nfe ;;
  }

  dimension: vers__o {
    type: string
    sql: ${TABLE}.vers__o ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

  measure: soma_total_compra {
    type: sum
    sql: ${TABLE}.${total_compra} ;;

  }

  measure: soma_total_impostos {
    type: sum
    sql: ${TABLE}.${impostos} ;;

  }

}
