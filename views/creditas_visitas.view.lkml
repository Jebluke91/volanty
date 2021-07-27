view: creditas_visitas {
  sql_table_name: `volanty-production.views.Creditas_Visitas`
    ;;

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
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

  dimension: data_visitada {
    type: number
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
    sql: ${TABLE}.inspetor_visita ;;
  }

  dimension: lead_id {
    type: string
    sql: ${TABLE}.lead_id ;;
  }

  dimension: level_of_interest_feedback {
    type: number
    sql: ${TABLE}.levelOfInterestFeedback ;;
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

  dimension: visitid {
    type: string
    sql: ${TABLE}.visitid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
