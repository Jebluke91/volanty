view: visitas {
  sql_table_name: `volanty-production.views_LGPD.Visitas`
    ;;

  dimension: ano_modelo {
    type: string
    sql: ${TABLE}.ano_modelo ;;
  }

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
  }

dimension: lead_id {
type: string
sql: ${TABLE}.lead_id ;;
}


  dimension: comentarios_visita {
    type: string
    sql: ${TABLE}.comentarios_visita ;;
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
    sql: ${TABLE}.data_criacao_lead_cliente ;;
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

  dimension: inspectionkey {
    type: number
    sql: ${TABLE}.inspectionkey ;;
  }

  dimension: inspetor_visita {
    type: string
    sql: ${TABLE}.consultor_visita ;;
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
    sql: ${TABLE}.meta_nome_campanha_lead ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
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

  dimension: referencia_lead {
    type: string
    sql: ${TABLE}.referencia_lead ;;
  }

  dimension: responsavel_venda {
    type: string
    sql: ${TABLE}.responsavel_venda ;;
  }

  dimension: status_visita {
    type: string
    sql: ${TABLE}.status_visita ;;
  }

  dimension: telefone_visitante {
    type: string
    sql: ${TABLE}.telefone_visitante ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
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
