view: vendas_oficial {
  sql_table_name: volanty-production.views.Vendas_Oficial ;;

  dimension: ano_modelo {
    type: number
    sql: ${TABLE}.ano_modelo ;;
  }

  dimension: carroceria {
    type: string
    sql: ${TABLE}.carroceria ;;
  }

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
  }

  dimension: cav_venda {
    type: string
    sql: ${TABLE}.cav_venda ;;
  }

  dimension: cep_comprador {
    type: string
    sql: ${TABLE}.cep_comprador ;;
  }

  dimension: cidade_comprador {
    type: string
    sql: ${TABLE}.cidade_comprador ;;
  }

  dimension: cor {
    type: string
    sql: ${TABLE}.cor ;;
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

  dimension_group: data_reserva {
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
    sql: CAST(${TABLE}.data_reserva AS TIMESTAMP) ;;
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

  dimension_group: data_retirado {
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
    sql: ${TABLE}.data_retirado ;;
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

  dimension: desconto_aplicado {
    type: string
    sql: ${TABLE}.desconto_aplicado ;;
  }

  dimension: entregue_ao_comprador {
    type: yesno
    sql: ${TABLE}.entregue_ao_comprador ;;
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

  dimension: intervalo_exigencia_anuncio {
    type: number
    sql: ${TABLE}.intervalo_exigencia_anuncio ;;
  }

  dimension: intervalo_reservado_vendido {
    type: number
    sql: ${TABLE}.intervalo_reservado_vendido ;;
  }

  dimension: km {
    type: number
    sql: ${TABLE}.km ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: percentual_comissao {
    type: number
    sql: ${TABLE}.percentual_comissao ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  dimension: preco_anuncio {
    type: string
    sql: ${TABLE}.preco_anuncio ;;
  }

  dimension: preco_de {
    type: number
    sql: ${TABLE}.preco_de ;;
  }

  dimension: preco_por {
    type: number
    sql: ${TABLE}.preco_por ;;
  }

  dimension: preco_venda {
    type: string
    sql: ${TABLE}.preco_venda ;;
  }

  dimension: produto {
    type: string
    sql: ${TABLE}.produto ;;
  }

  dimension: saldo_proprietario {
    type: string
    sql: ${TABLE}.saldo_proprietario ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: status_pedido {
    type: string
    sql: ${TABLE}.status_pedido ;;
  }

  dimension: tipo_express {
    type: yesno
    sql: ${TABLE}.tipo_express ;;
  }

  dimension: tipo_venda {
    type: string
    sql: ${TABLE}.tipo_venda ;;
  }

  dimension: transmissao {
    type: string
    sql: ${TABLE}.transmissao ;;
  }

  dimension: uf {
    type: string
    sql: ${TABLE}.uf ;;
  }

  dimension_group: ultima_atualizacao {
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
    sql: CAST(${TABLE}.ultima_atualizacao AS TIMESTAMP) ;;
  }

  dimension: vendedor {
    type: string
    sql: ${TABLE}.vendedor ;;
  }

  dimension: versao {
    type: string
    sql: ${TABLE}.versao ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  measure: preco_total {
    sql: ${preco_por} ;;
    type: sum
  }
  measure: preco_medio {
    sql: ${preco_por} ;;
    type: average
  }
}
