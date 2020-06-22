view: estoque_movimentacao {
  sql_table_name: `volanty-production.views.EstoqueMovimentacao`
    ;;

  dimension: entrada_acumulada {
    type: number
    sql: ${TABLE}.entrada_acumulada ;;
  }

  measure: estoque_mes {
    type: sum
    sql: ${TABLE}.estoque_mes ;;
  }

  dimension_group: mes {
    type: time
    timeframes: [
      month,
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

  measure: qtd_entrada {
    type: sum
    sql: ${TABLE}.qtd_entrada ;;
  }

  measure: qtd_saida {
    type: sum
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
