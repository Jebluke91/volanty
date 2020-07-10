view: capacidade_estoque {
  sql_table_name: `volanty-production.views.capacidade_estoque`
    ;;



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

  measure: reservados {
    type: sum
    sql: ${TABLE}.reservados ;;
  }

  measure: capacidade {
   type: sum
    sql: ${TABLE}.capacidade ;;
  }

}
