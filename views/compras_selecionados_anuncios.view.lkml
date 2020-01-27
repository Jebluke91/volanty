view: compras_selecionados_anuncios {
  sql_table_name: views.ComprasSelecionadosAnuncios ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: bo_aportado {
    type: string
    sql: ${TABLE}.bo_aportado ;;
  }

  dimension: carro_ano_modelo {
    type: number
    sql: ${TABLE}.carro_ano_modelo ;;
  }

  dimension: carro_marca {
    type: string
    sql: ${TABLE}.carro_marca ;;
  }

  dimension: carro_modelo {
    type: string
    sql: ${TABLE}.carro_modelo ;;
  }

  dimension: carro_versao {
    type: string
    sql: ${TABLE}.carro_versao ;;
  }

  dimension: carroceria {
    type: string
    sql: ${TABLE}.carroceria ;;
  }

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
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

  dimension: compra_ano_fab {
    type: number
    sql: ${TABLE}.compra_ano_fab ;;
  }

  dimension: compra_ano_modelo {
    type: number
    sql: ${TABLE}.compra_ano_modelo ;;
  }

  dimension: compra_km {
    type: number
    sql: ${TABLE}.compra_km ;;
  }

  dimension: compra_marca {
    type: string
    sql: ${TABLE}.compra_marca ;;
  }

  dimension: compra_modelo {
    type: string
    sql: ${TABLE}.compra_modelo ;;
  }

  dimension: compra_placa {
    type: string
    sql: ${TABLE}.compra_placa ;;
  }

  dimension: compra_status {
    type: string
    sql: ${TABLE}.compra_status ;;
  }

  dimension: compra_uf {
    type: string
    sql: ${TABLE}.compra_uf ;;
  }

  dimension: consulta_veiculo {
    type: number
    sql: ${TABLE}.consulta_veiculo ;;
  }

  dimension: contrato {
    type: string
    sql: ${TABLE}.contrato ;;
  }

  dimension: cor {
    type: string
    sql: ${TABLE}.cor ;;
  }

  dimension: custos_preparacao {
    type: number
    sql: ${TABLE}.custos_preparacao ;;
  }

  dimension: custos_reparo {
    type: number
    sql: ${TABLE}.custos_reparo ;;
  }

  dimension_group: data_agendado {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.data_agendado ;;
  }

  dimension_group: data_anunciado {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.data_anunciado ;;
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

  dimension_group: data_exigencia {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.data_exigencia ;;
  }

  dimension_group: data_pedido_colocado {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.data_pedido_colocado ;;
  }

  dimension_group: data_reservado {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.data_reservado ;;
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

  dimension_group: data_vendido {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.data_vendido ;;
  }

  dimension: debitos {
    type: number
    sql: ${TABLE}.debitos ;;
  }

  dimension: despachante {
    type: number
    sql: ${TABLE}.despachante ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }

  dimension: inspection_key {
    type: number
    sql: ${TABLE}.inspectionKey ;;
  }

  dimension: intervalo_agendado_vendido {
    type: number
    sql: ${TABLE}.intervalo_agendado_vendido ;;
  }

  dimension: intervalo_anunciado_reservado {
    type: number
    sql: ${TABLE}.intervalo_anunciado_reservado ;;
  }

  dimension: intervalo_anunciado_vendido {
    type: number
    sql: ${TABLE}.intervalo_anunciado_vendido ;;
  }

  dimension: intervalo_desde_compra {
    type: number
    sql: ${TABLE}.intervalo_desde_compra ;;
  }

  dimension: intervalo_em_estoque {
    type: number
    sql: ${TABLE}.intervalo_em_estoque ;;
  }

  dimension: intervalo_entre_compra_anuncio {
    type: number
    sql: ${TABLE}.intervalo_entre_compra_anuncio ;;
  }

  dimension: intervalo_exigencia_anuncio {
    type: number
    sql: ${TABLE}.intervalo_exigencia_anuncio ;;
  }

  dimension: intervalo_reservado_vendido {
    type: number
    sql: ${TABLE}.intervalo_reservado_vendido ;;
  }

  dimension: km_carro {
    type: number
    sql: ${TABLE}.km_carro ;;
  }

  dimension: laudo {
    type: number
    sql: ${TABLE}.laudo ;;
  }

  dimension: nf_de_remessa {
    type: string
    sql: ${TABLE}.nf_de_remessa ;;
  }

  dimension: nfe_compra {
    type: number
    sql: ${TABLE}.nfe_compra ;;
  }

  dimension: nfe_venda {
    type: number
    sql: ${TABLE}.nfe_venda ;;
  }

  dimension: origem {
    type: string
    sql: ${TABLE}.origem ;;
  }

  dimension: preco_de {
    type: number
    sql: ${TABLE}.preco_de ;;
  }

  dimension: preco_por {
    type: number
    sql: ${TABLE}.preco_por ;;
  }

  dimension: prefeitura {
    type: string
    sql: ${TABLE}.prefeitura ;;
  }

  dimension: prefreitura {
    type: string
    sql: ${TABLE}.prefreitura ;;
  }

  dimension: produto {
    type: string
    sql: ${TABLE}.produto ;;
  }

  dimension: renavam {
    type: number
    sql: ${TABLE}.renavam ;;
  }

  dimension: repasso_ao_proprietario {
    type: number
    sql: ${TABLE}.repasso_ao_proprietario ;;
  }

  dimension: status_carro {
    type: string
    sql: ${TABLE}.status_carro ;;
  }

  dimension: transmissao {
    type: string
    sql: ${TABLE}.transmissao ;;
  }

  dimension: valor_anuncio {
    type: number
    sql: ${TABLE}.valor_anuncio ;;
  }

  dimension: valor_venda_final {
    type: number
    sql: ${TABLE}.valor_venda_final ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
