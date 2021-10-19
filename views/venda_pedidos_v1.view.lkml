view: venda_pedidos_v1 {
  sql_table_name: `volanty-production.raw_views.Venda_Pedidos_v1`
    ;;

  dimension: ano_modelo {
    type: string
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

  dimension: consultor_apoiador {
    type: string
    sql: ${TABLE}.consultor_apoiador ;;
  }

  dimension: cor {
    type: string
    sql: ${TABLE}.cor ;;
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

  dimension_group: data_ativacao_garantia {
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
    sql: ${TABLE}.Data_ativacao_garantia ;;
  }

  dimension_group: data_entrega {
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
    sql: ${TABLE}.data_entrega ;;
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

  dimension: delivery_date {
    type: string
    sql: ${TABLE}.delivery_date ;;
  }

  dimension: email_comprador {
    type: string
    sql: ${TABLE}.email_comprador ;;
  }

  dimension: fornecedor {
    type: string
    sql: ${TABLE}.fornecedor ;;
  }

  dimension: garantia_premium {
    type: string
    sql: ${TABLE}.Garantia_Premium ;;
  }

  dimension: garantia_premium_preco {
    type: string
    sql: ${TABLE}.Garantia_Premium_Preco ;;
  }

  dimension: inspection_key {
    type: string
    sql: ${TABLE}.inspection_key ;;
  }

  dimension: intervalo_anunciado_reservado {
    type: number
    sql: ${TABLE}.intervalo_anunciado_reservado ;;
  }

  dimension: intervalo_anunciado_vendido {
    type: number
    sql: ${TABLE}.intervalo_anunciado_vendido ;;
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

  dimension: nome_comprador {
    type: string
    sql: ${TABLE}.nome_comprador ;;
  }

  dimension: origem {
    type: string
    sql: ${TABLE}.origem ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}.reason ;;
  }

  dimension: reason_description {
    type: string
    sql: ${TABLE}.reason_description ;;
  }

  dimension: preco_anuncio {
    type: string
    sql: ${TABLE}.preco_anuncio ;;
  }

  dimension: preco_venda {
    type: number
    sql: ${TABLE}.preco_venda ;;
  }

  dimension: produto {
    type: string
    sql: ${TABLE}.produto ;;
  }

  dimension: produto_venda {
    type: string
    sql: ${TABLE}.produto_venda ;;
  }

  dimension: referencia_cliente_telefone {
    type: string
    sql: ${TABLE}.referencia_cliente_telefone ;;
  }

  dimension: referencia_lead {
    type: string
    sql: ${TABLE}.referencia_lead ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: tag {
    type: string
    sql: ${TABLE}.tag ;;
  }

  dimension: telefone_comprador {
    type: string
    sql: ${TABLE}.telefone_comprador ;;
  }

  dimension: tipo_delivery {
    type: string
    sql: ${TABLE}.tipo_delivery ;;
  }

  dimension: transmissao {
    type: string
    sql: ${TABLE}.transmissao ;;
  }

  dimension: uf_comprador {
    type: string
    sql: ${TABLE}.uf_comprador ;;
  }

  dimension: uf_venda {
    type: string
    sql: ${TABLE}.UF_venda ;;
  }


  dimension: empresa {
    type: string
    sql: ${TABLE}.empresa ;;
  }

  dimension: reserva_paga {
    type: string
    sql: ${TABLE}.reserva_paga ;;
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
    sql: ${TABLE}.ultima_atualizacao ;;
  }

  dimension: utm_campanha_lead {
    type: string
    sql: ${TABLE}.utm_campanha_lead ;;
  }

  dimension: utm_fonte_lead {
    type: string
    sql: ${TABLE}.utm_fonte_lead ;;
  }

  dimension: utm_midia_lead {
    type: string
    sql: ${TABLE}.utm_midia_lead ;;
  }

  dimension: utm_volanty_lead {
    type: string
    sql: ${TABLE}.utm_volanty_lead ;;
  }

  dimension: valor_compra {
    type: number
    sql: ${TABLE}.valor_compra ;;
  }

  dimension: vendedor {
    type: string
    sql: ${TABLE}.vendedor ;;
  }

  dimension: versao {
    type: string
    sql: ${TABLE}.versao ;;
  }

  dimension: visitid {
    type: string
    sql: ${TABLE}.visitid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
