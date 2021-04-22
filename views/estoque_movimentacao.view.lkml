view: estoque_movimentacao {
  sql_table_name: `volanty-production.views.EstoqueMovimentacao`
    ;;

  dimension: entrada_acumulada {
    type: number
    sql: ${TABLE}.entrada_acumulada ;;
  }

  dimension: estoque_mes {
    type: number
    sql: ${TABLE}.estoque_mes ;;
  }

  dimension_group: mes {
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
    sql: ${TABLE}.mes ;;
  }

  dimension: mes_entrada {
    type: string
    sql: ${TABLE}.mes_entrada ;;
  }

  dimension: qtd_entrada {
    type: number
    sql: ${TABLE}.qtd_entrada ;;
  }

  dimension: qtd_saida {
    type: number
    sql: ${TABLE}.qtd_saida ;;
  }

  dimension: saida_acumulada {
    type: number
    sql: ${TABLE}.saida_acumulada ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
