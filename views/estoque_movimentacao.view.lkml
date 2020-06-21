view: estoque_movimentacao {
  sql_table_name: `volanty-production.views.Estoque_Movimentacao`
    ;;

  measure: entrada_acumulada {
    type: sum
    sql: ${TABLE}.entrada_acumulada ;;
  }

  measure: estoque_mes {
    type: sum
    sql: ${TABLE}.estoque_mes ;;
  }

  dimension: mes_entrada {
    label: "mes"
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

  measure: saida_acumulada {
    type: sum
    sql: ${TABLE}.saida_acumulada ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
