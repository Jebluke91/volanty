view: visita {
  sql_table_name: views.Visita ;;

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
  }

  dimension: comentarios_visita {
    type: string
    sql: ${TABLE}.comentarios_visita ;;
  }

  dimension_group: data_inspecao_agendada_para {
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
    sql: ${TABLE}.data_inspecao_agendada_para ;;
  }

  dimension_group: data_inspecao_atualizada {
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
    sql: CAST(${TABLE}.data_inspecao_atualizada AS TIMESTAMP) ;;
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
    sql: CAST(${TABLE}.data_visita_agendada_para AS TIMESTAMP) ;;
  }

  dimension_group: data_visita_criada {
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
    sql: CAST(${TABLE}.data_visitada AS TIMESTAMP) ;;
  }

  dimension: email_visitante {
    type: string
    sql: ${TABLE}.email_visitante ;;
  }

  dimension: inspecao_analise {
    type: string
    sql: ${TABLE}.inspecao_analise ;;
  }

  dimension: inspecao_checkin {
    type: yesno
    sql: ${TABLE}.inspecao_checkin ;;
  }

  dimension: inspecao_restricoes {
    hidden: yes
    sql: ${TABLE}.inspecao_restricoes ;;
  }

  dimension: inspecao_status {
    type: string
    sql: ${TABLE}.inspecao_status ;;
  }

  dimension: inspecao_status_processamento {
    type: number
    sql: ${TABLE}.inspecao_status_processamento ;;
  }

  dimension: inspetor_visita {
    type: string
    sql: ${TABLE}.inspetor_visita ;;
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

  dimension: origem_visita {
    type: string
    sql: ${TABLE}.origem_visita ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
    primary_key: yes
  }

  dimension: selecionado {
    type: string
    sql: ${TABLE}.selecionado ;;
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

  dimension: status_agendamento {
    type: string
    sql: ${TABLE}.status_agendamento ;;
  }

  dimension: status_visita {
    type: string
    sql: ${TABLE}.status_visita ;;
  }

  dimension: telefone_visitante {
    type: string
    sql: ${TABLE}.telefone_visitante ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: visita__inspecao_restricoes {
  dimension: entry {
    type: string
    sql: ${TABLE}.entry ;;
  }
}
