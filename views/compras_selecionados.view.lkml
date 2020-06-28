view: compras_selecionados {
  sql_table_name: `volanty-production.spreedsheets_data.compras_selecionados`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: ano_fab {
    type: string
    sql: ${TABLE}.ano_fab ;;
  }

  dimension: ano_mes_compra {
    type: string
    sql: ${TABLE}.ano_mes_compra ;;
  }

  dimension: ano_modelo {
    type: string
    sql: ${TABLE}.ano_modelo ;;
  }

  dimension: cav_captacao {
    type: string
    sql: ${TABLE}.cav_captacao ;;
  }

  dimension: cav_showroom {
    type: string
    sql: ${TABLE}.cav_showroom ;;
  }

  dimension: cav_venda {
    type: string
    sql: ${TABLE}.cav_venda ;;
  }

  dimension: chassi {
    type: string
    sql: ${TABLE}.chassi ;;
  }

  dimension: comunicacao_de_venda {
    type: string
    sql: ${TABLE}.comunicacao_de_venda ;;
  }

  dimension: consulta_veiculo {
    type: string
    sql: ${TABLE}.consulta_veiculo ;;
  }

  dimension: custo_revisao {
    type: string
    sql: ${TABLE}.custo_revisao ;;
  }

  dimension: custo_total {
    type: string
    sql: ${TABLE}.custo_total ;;
  }

  dimension: custos_preparacao {
    type: string
    sql: ${TABLE}.custos_preparacao ;;
  }

  dimension: custos_reparo {
    type: string
    sql: ${TABLE}.custos_reparo ;;
  }

  dimension: data_anuncio {
    type: string
    sql: ${TABLE}.data_anuncio ;;
  }

  dimension: data_compra {
    type: string
    sql: ${TABLE}.data_compra ;;
  }

  dimension: data_nf_remessa {
    type: string
    sql: ${TABLE}.data_nf_remessa ;;
  }

  dimension: data_venda {
    type: string
    sql: ${TABLE}.data_venda ;;
  }

  dimension: debitos {
    type: string
    sql: ${TABLE}.debitos ;;
  }

  dimension: debitos_pos_compra {
    type: string
    sql: ${TABLE}.debitos_pos_compra ;;
  }

  dimension: debitos_pos_fornecedores {
    type: string
    sql: ${TABLE}.debitos_pos_fornecedores ;;
  }

  dimension: despachante {
    type: string
    sql: ${TABLE}.despachante ;;
  }

  dimension: dias_anunciado {
    type: string
    sql: ${TABLE}.dias_anunciado ;;
  }

  dimension: dias_em_estoque {
    type: string
    sql: ${TABLE}.dias_em_estoque ;;
  }

  dimension: garantia {
    type: string
    sql: ${TABLE}.garantia ;;
  }

  dimension: giro_anuncio {
    type: string
    sql: ${TABLE}.giro_anuncio ;;
  }

  dimension: giro_total {
    type: string
    sql: ${TABLE}.giro_total ;;
  }

  dimension: icms_anuncio {
    type: string
    sql: ${TABLE}.icms_anuncio ;;
  }

  dimension: icms_remessa {
    type: string
    sql: ${TABLE}.icms_remessa ;;
  }

  dimension: icms_venda {
    type: string
    sql: ${TABLE}.icms_venda ;;
  }

  dimension: impostos_anuncio {
    type: string
    sql: ${TABLE}.impostos_anuncio ;;
  }

  dimension: km {
    type: string
    sql: ${TABLE}.km ;;
  }

  dimension: laudo {
    type: string
    sql: ${TABLE}.laudo ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: margem_bruta_anuncio {
    type: string
    sql: ${TABLE}.margem_bruta_anuncio ;;
  }

  dimension: margem_bruta_venda {
    type: string
    sql: ${TABLE}.margem_bruta_venda ;;
  }

  dimension: margem_de_cont_anuncio {
    type: string
    sql: ${TABLE}.margem_de_cont_anuncio ;;
  }

  dimension: margem_de_cont_venda {
    type: string
    sql: ${TABLE}.margem_de_cont_venda ;;
  }

  dimension: margem_liquida_anuncio {
    type: string
    sql: ${TABLE}.margem_liquida_anuncio ;;
  }

  dimension: margem_liquida_venda {
    type: string
    sql: ${TABLE}.margem_liquida_venda ;;
  }

  dimension: mes_ano_anuncio {
    type: string
    sql: ${TABLE}.mes_ano_anuncio ;;
  }

  dimension: mes_ano_venda {
    type: string
    sql: ${TABLE}.mes_ano_venda ;;
  }

  dimension: mes_icms_remessa {
    type: string
    sql: ${TABLE}.mes_icms_remessa ;;
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
    type: string
    sql: ${TABLE}.nfe_compra ;;
  }

  dimension: nfe_venda {
    type: string
    sql: ${TABLE}.nfe_venda ;;
  }

  dimension: operacao {
    type: string
    sql: ${TABLE}.operacao ;;
  }

  dimension: origem {
    type: string
    sql: ${TABLE}.origem ;;
  }

  dimension: pis_e_cofins_anuncio {
    type: string
    sql: ${TABLE}.pis_e_cofins_anuncio ;;
  }

  dimension: pis_e_cofins_venda {
    type: string
    sql: ${TABLE}.pis_e_cofins_venda ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  dimension: placa_nova {
    type: string
    sql: ${TABLE}.placa_nova ;;
  }

  dimension: prazo_para_anuncio {
    type: string
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

  dimension: quitacao_finan {
    type: string
    sql: ${TABLE}.quitacao_finan ;;
  }

  dimension: renavam {
    type: string
    sql: ${TABLE}.renavam ;;
  }

  dimension: repasse {
    type: string
    sql: ${TABLE}.repasse ;;
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
    type: string
    sql: ${TABLE}.total_compra ;;
  }

  dimension: total_negociado {
    type: string
    sql: ${TABLE}.total_negociado ;;
  }

  dimension: total_outros {
    type: string
    sql: ${TABLE}.total_outros ;;
  }

  dimension: transporte {
    type: string
    sql: ${TABLE}.transporte ;;
  }

  dimension: uf {
    type: string
    sql: ${TABLE}.uf ;;
  }

  dimension: valor_anuncio {
    type: string
    sql: ${TABLE}.valor_anuncio ;;
  }

  dimension: valor_impostos_venda {
    type: string
    sql: ${TABLE}.valor_impostos_venda ;;
  }

  dimension: valor_margem_bruta_anuncio {
    type: string
    sql: ${TABLE}.valor_margem_bruta_anuncio ;;
  }

  dimension: valor_margem_bruta_venda {
    type: string
    sql: ${TABLE}.valor_margem_bruta_venda ;;
  }

  dimension: valor_margem_de_cont_anuncio {
    type: string
    sql: ${TABLE}.valor_margem_de_cont_anuncio ;;
  }

  dimension: valor_margem_de_cont_venda {
    type: string
    sql: ${TABLE}.valor_margem_de_cont_venda ;;
  }

  dimension: valor_margem_liquida_anuncio {
    type: string
    sql: ${TABLE}.valor_margem_liquida_anuncio ;;
  }

  dimension: valor_margem_liquida_venda {
    type: string
    sql: ${TABLE}.valor_margem_liquida_venda ;;
  }

  dimension: valor_nfe {
    type: string
    sql: ${TABLE}.valor_nfe ;;
  }

  dimension: valor_venda_final {
    type: string
    sql: ${TABLE}.valor_venda_final ;;
  }

  dimension: versao {
    type: string
    sql: ${TABLE}.versao ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
