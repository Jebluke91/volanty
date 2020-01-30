view: funil_de_compra {
  sql_table_name: views.Funil_de_Compra ;;

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
