view: capacidade_estoque {
  sql_table_name: `volanty-production.views.capacidade_estoque`
    ;;

  dimension: capacidade {
    type: number
    sql: ${TABLE}.capacidade ;;
  }

  dimension: cav {
    type: string
    sql: ${TABLE}.CAV ;;
  }

  measure: lotacao {
    type: sum
    sql: ${TABLE}.lotacao ;;
  }

  measure: qtd {
    type: sum
    sql: ${TABLE}.qtd ;;
  }


}
