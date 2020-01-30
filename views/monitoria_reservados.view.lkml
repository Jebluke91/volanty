view: monitoria_reservados {
  sql_table_name: views.Monitoria_Reservados ;;

  dimension: status_estoque {
    type: number
    sql: ${TABLE}.status_estoque ;;
  }

  dimension_group: ultima_atualizacao_inspecao {
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
    sql: ${TABLE}.ultima_atualizacao_inspecao ;;
  }

  dimension: url_carro {
    type: string
    sql: ${TABLE}.url_carro ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
