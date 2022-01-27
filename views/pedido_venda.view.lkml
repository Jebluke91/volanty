view: pedido_venda {
  sql_table_name: `volanty-production.views.Pedido_Venda`
    ;;

  dimension: ano_modelo {
    type: string
    sql: ${TABLE}.ano_modelo ;;
  }

  dimension: banco {
    type: string
    sql: ${TABLE}.Banco ;;
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

  dimension: consultor {
    type: string
    sql: ${TABLE}.consultor ;;
  }

  dimension: consultor_apoiador {
    type: string
    sql: ${TABLE}.consultor_apoiador ;;
  }

  dimension: cor {
    type: string
    sql: ${TABLE}.cor ;;
  }

  dimension: data_anunciado {
    type: string
    sql: ${TABLE}.data_anunciado ;;
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

  dimension: ddd_comprador {
    type: string
    sql: ${TABLE}.ddd_comprador ;;
  }

  dimension: delivery_date {
    type: string
    sql: ${TABLE}.delivery_date ;;
  }

  dimension: email_comprador {
    type: string
    sql: ${TABLE}.email_comprador ;;
  }

  dimension: empresa {
    type: string
    sql: ${TABLE}.empresa ;;
  }

  dimension: financiamento_externo {
    type: yesno
    sql: ${TABLE}.Financiamento_externo ;;
  }

  dimension: financiamento_interno {
    type: yesno
    sql: ${TABLE}.Financiamento_interno ;;
  }

  dimension: fornecedor {
    type: string
    sql: ${TABLE}.fornecedor ;;
  }

  dimension: id_venda {
    type: string
    sql: ${TABLE}.id_venda ;;
  }

  dimension: inspection_key {
    type: string
    sql: ${TABLE}.inspection_key ;;
  }

  dimension: intervalo_anunciado_reservado {
    type: number
    sql: ${TABLE}.intervalo_anunciado_reservado ;;
  }

  dimension: km {
    type: number
    sql: ${TABLE}.km ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: meta_nome_campanha_lead {
    type: string
    sql: ${TABLE}.meta_nome_campanha_lead ;;
  }

  dimension: metas {
    type: number
    sql: ${TABLE}.metas ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: nome_comprador {
    type: string
    sql: ${TABLE}.nome_comprador ;;
  }

  dimension: origin_cliente {
    type: string
    sql: ${TABLE}.origin_cliente ;;
  }

  dimension: partner_cliente {
    type: string
    sql: ${TABLE}.partner_cliente ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  dimension: placa_veiculo_troca {
    type: string
    sql: ${TABLE}.Placa_Veiculo_troca ;;
  }

  dimension: preco_anuncio {
    type: number
    sql: ${TABLE}.preco_anuncio ;;
  }

  dimension: preco_venda {
    type: number
    sql: ${TABLE}.preco_venda ;;
  }

  dimension: produto_venda {
    type: string
    sql: ${TABLE}.produto_venda ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}.reason ;;
  }

  dimension: reasondescription {
    type: string
    sql: ${TABLE}.reasondescription ;;
  }

  dimension: referencia_cliente {
    type: string
    sql: ${TABLE}.referencia_cliente ;;
  }

  dimension: referencia_lead {
    type: string
    sql: ${TABLE}.referencia_lead ;;
  }

  dimension: reserva_paga {
    type: string
    sql: ${TABLE}.reserva_paga ;;
  }

  dimension: responsavel_visita {
    type: string
    sql: ${TABLE}.responsavel_visita ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: status_primeiro_pagamento {
    type: string
    sql: ${TABLE}.status_primeiro_pagamento ;;
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

  dimension: uf_comprador {
    type: string
    sql: ${TABLE}.uf_comprador ;;
  }

  dimension: uf_venda {
    type: string
    sql: ${TABLE}.UF_venda ;;
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

  dimension: utm_campaign_cliente {
    type: string
    sql: ${TABLE}.utmCampaign_cliente ;;
  }

  dimension: utm_campaign_lead {
    type: string
    sql: ${TABLE}.utmCampaign_lead ;;
  }

  dimension: utm_medium_cliente {
    type: string
    sql: ${TABLE}.utmMedium_cliente ;;
  }

  dimension: utm_medium_lead {
    type: string
    sql: ${TABLE}.utmMedium_lead ;;
  }

  dimension: utmsource_cliente {
    type: string
    sql: ${TABLE}.utmsource_cliente ;;
  }

  dimension: utmsource_lead {
    type: string
    sql: ${TABLE}.utmsource_lead ;;
  }

  dimension: valor_financiamento_interno {
    type: string
    sql: ${TABLE}.Valor_Financiamento_interno ;;
  }

  dimension: veiculo_troca {
    type: yesno
    sql: ${TABLE}.Veiculo_troca ;;
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
