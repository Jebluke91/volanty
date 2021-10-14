view: vendas {
  sql_table_name: `volanty-production.views.Vendas`
    ;;

  dimension: ano_modelo {
    type: string
    sql: ${TABLE}.ano_modelo ;;
  }

  dimension: banco {
    type: string
    sql: ${TABLE}.Banco ;;
  }

  dimension: reserva_paga {
    type: string
    sql: ${TABLE}.reserva_paga ;;
  }

  dimension: car_vendor {
    type: string
    sql: ${TABLE}.CAR_VENDOR ;;
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

  dimension: comentarios_visita {
    type: string
    sql: ${TABLE}.comentarios_visita ;;
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

  dimension_group: data_atualizacao {
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
    sql: ${TABLE}.data_atualizacao ;;
  }

  dimension_group: data_criacao_lead {
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
    sql: ${TABLE}.data_criacao_lead ;;
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
      year,
      day_of_month
    ]
    sql: ${TABLE}.data_vendido ;;
  }

  dimension_group: data_visita_agendada_para {
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
    sql: ${TABLE}.data_visita_agendada_para ;;
  }

  dimension_group: data_visita_criada {
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
    sql: ${TABLE}.data_visita_criada ;;
  }

  dimension_group: data_visitada {
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
    sql: ${TABLE}.data_visitada ;;
  }

  dimension: delivery_date {
    type: string
    sql: ${TABLE}.delivery_date ;;
  }

  dimension: email_comprador {
    type: string
    sql: ${TABLE}.email_comprador ;;
  }

  dimension: email_visitante {
    type: string
    sql: ${TABLE}.email_visitante ;;
  }

  dimension: feed_back_observation {
    type: string
    sql: ${TABLE}.feedBack_observation ;;
  }

  dimension: feed_back_reason {
    type: string
    sql: ${TABLE}.feedBack_reason ;;
  }

  dimension: feed_back_status {
    type: string
    sql: ${TABLE}.feedBack_status ;;
  }

  dimension: financiamento_externo {
    type: yesno
    sql: ${TABLE}.Financiamento_externo ;;
  }

  dimension: financiamento_interno {
    type: yesno
    sql: ${TABLE}.Financiamento_interno ;;
  }

  dimension: id_venda {
    type: string
    sql: ${TABLE}.id_venda ;;
  }

  dimension: inspection_key {
    type: string
    sql: ${TABLE}.inspection_key ;;
  }

  dimension: inspectionkey {
    type: number
    sql: ${TABLE}.inspectionkey ;;
  }

  dimension: inspetor_visita {
    type: string
    sql: ${TABLE}.inspetor_visita ;;
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

  dimension: leadid {
    type: string
    sql: ${TABLE}.leadid ;;
  }

  dimension: level_of_interest_feedback {
    type: number
    sql: ${TABLE}.levelOfInterestFeedback ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: meta_nome_campanha {
    type: string
    sql: ${TABLE}.meta_nome_campanha ;;
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

  dimension: nome_visitante {
    type: string
    sql: ${TABLE}.nome_visitante ;;
  }

  dimension: observacao_cliente {
    type: string
    sql: ${TABLE}.observacao_cliente ;;
  }

  dimension: origin {
    type: string
    sql: ${TABLE}.origin ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  dimension: preco_anunciado {
    type: number
    sql: ${TABLE}.preco_anunciado ;;
  }

  dimension: preco_anuncio {
    type: number
    sql: ${TABLE}.preco_anuncio ;;
  }

  dimension: preco_negociado_cliente {
    type: number
    sql: ${TABLE}.preco_negociado_cliente ;;
  }

  dimension: preco_negociadofrom {
    type: number
    sql: ${TABLE}.preco_negociadofrom ;;
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

  dimension: responsavel_venda {
    type: string
    sql: ${TABLE}.responsavel_venda ;;
  }

  dimension: responsavel_visita {
    type: string
    sql: ${TABLE}.responsavel_visita ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: status_visita {
    type: string
    sql: ${TABLE}.status_visita ;;
  }

  dimension: tag {
    type: string
    sql: ${TABLE}.tag ;;
  }

  dimension: telefone_comprador {
    type: string
    sql: ${TABLE}.telefone_comprador ;;
  }

  dimension: telefone_visitante {
    type: string
    sql: ${TABLE}.telefone_visitante ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }

  dimension: tipo_delivery {
    type: string
    sql: ${TABLE}.tipo_delivery ;;
  }

  dimension: transmissao {
    type: string
    sql: ${TABLE}.transmissao ;;
  }

  dimension: uf {
    type: string
    sql: ${TABLE}.UF ;;
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

  dimension: vendedor {
    type: string
    sql: ${TABLE}.vendedor ;;
  }

  dimension: empresa {
    type: string
    sql: ${TABLE}.empresa ;;
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
