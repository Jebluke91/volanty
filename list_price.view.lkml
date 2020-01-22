view: list_price {
  sql_table_name: views.ListPrice ;;

  dimension: inspection_id {
    type: number
    sql: ${TABLE}.inspection_id ;;
  }

  dimension: list_price {
    type: number
    sql: ${TABLE}.list_price ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
