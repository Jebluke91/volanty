view: conversao_aquisicao_v1 {
  sql_table_name: `volanty-production.raw_views.Conversao_Aquisicao_v1`
    ;;

  dimension: agendamento_simulacoes {
    type: number
    sql: ${TABLE}.Agendamento_Simulacoes ;;
  }

  measure: agendamento_simulacoes_ {
    type: sum
    sql: ${TABLE}.Agendamento_Simulacoes ;;
  }

  dimension: agendamentos {
    type: number
    sql: ${TABLE}.Agendamentos ;;
  }

  measure: agendamentos_ {
    type: sum
    sql: ${TABLE}.Agendamentos ;;
  }

  dimension: aquisicao {
    type: number
    sql: ${TABLE}.Aquisicao ;;
  }


  measure: aquisicao_ {
    type: sum
    sql: ${TABLE}.Aquisicao ;;
  }

  dimension: aquisicao_avaliacao {
    type: number
    sql: ${TABLE}.Aquisicao_Avaliacao ;;
  }

  measure: aquisicao_avaliacao_ {
    type: sum
    sql: ${TABLE}.Aquisicao_Avaliacao ;;
  }

  dimension: avaliacao {
    type: number
    sql: ${TABLE}.Avaliacao ;;
  }

  dimension_group: data {
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
    sql: ${TABLE}.data ;;
  }

  dimension: proposta {
    type: number
    sql: ${TABLE}.Proposta ;;
  }

  dimension: proposta_avaliacao {
    type: number
    sql: ${TABLE}.proposta_avaliacao ;;
  }

  measure: proposta_avaliacao_ {
    type: sum
    sql: ${TABLE}.proposta_avaliacao ;;
  }

  dimension: simulacoes {
    type: number
    sql: ${TABLE}.Simulacoes ;;
  }

  measure: simulacoes_ {
    type: sum
    sql: ${TABLE}.Simulacoes ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
