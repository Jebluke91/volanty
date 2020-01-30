view: funil {
  sql_table_name: views.Funil ;;

  dimension: etapa {
    type: string
    sql: ${TABLE}.etapa ;;
  }

  dimension: qty {
    type: number
    sql: ${TABLE}.qty ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
