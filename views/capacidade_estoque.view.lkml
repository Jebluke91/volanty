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
    type: number
    sql: ${TABLE}.lotacao ;;
  }

  measure: qtd {
    type: number
    sql: ${TABLE}.qtd ;;
  }


}
