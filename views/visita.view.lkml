view: visita {
  sql_table_name: `volanty-production.views.Visita`
    ;;

  dimension: ano_modelo {
    type: string
    sql: ${TABLE}.ano_modelo ;;
  }

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
  }

  dimension: comentarios_visita {
    type: string
    sql: ${TABLE}.comentarios_visita ;;
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

  dimension: inspectionkey {
    type: number
    sql: ${TABLE}.inspectionkey ;;
  }


  dimension: observacao_cliente {
    type: string
    sql: ${TABLE}.observacao_cliente ;;
  }


  dimension: inspetor_visita {
    type: string
    sql: ${TABLE}.inspetor_visita ;;
  }

  dimension: level_of_interest_feedback {
    type: number
    sql: ${TABLE}.levelOfInterestFeedback ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: lead_id {
    type: string
    sql: ${TABLE}.lead_id ;;
  }

  dimension: referencia_cliente_telefone {
    type: string
    sql: ${TABLE}.referencia_cliente_telefone ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: nome_visitante {
    type: string
    sql: ${TABLE}.nome_visitante ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }

  dimension: origem_visita {
    type: string
    sql: ${TABLE}.origem_visita ;;
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

  dimension: produto {
    type: string
    sql: ${TABLE}.produto ;;
  }

  dimension: leadid {
    type: string
    sql: ${TABLE}.leadid ;;
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

  dimension: uf {
    type: string
    sql: ${TABLE}.UF ;;
  }

  dimension: versao {
    type: string
    sql: ${TABLE}.versao ;;
  }
  dimension: meta_nome_campanha {
    type: string
    sql: ${TABLE}.meta_nome_campanha ;;
  }
  dimension: utm_campanha_lead {
    type: string
    sql: ${TABLE}.utm_campanha_lead ;;
  }
  dimension: utm_fonte_lead {
    type: string
    sql: ${TABLE}.utm_fonte_lead ;;
  }
  dimension: utm_volanty_lead {
    type: string
    sql: ${TABLE}.utm_volanty_lead ;;
  }
  dimension: utm_midia_lead {
    type: string
    sql: ${TABLE}.utm_midia_lead ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  dimension: origin {
    type: string
    sql: ${TABLE}.origin ;;
  }
}
