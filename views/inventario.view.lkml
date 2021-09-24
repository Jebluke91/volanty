view: inventario {
  sql_table_name: `volanty-production.views.Inventario`
    ;;

  dimension: ano {
    type: string
    sql: ${TABLE}.ano ;;
  }

  dimension: estoque {
    type: string
    sql: ${TABLE}.estoque ;;
  }

  dimension: fipe {
    type: number
    sql: ${TABLE}.fipe ;;
  }

  dimension: fonte {
    type: string
    sql: ${TABLE}.fonte ;;
  }

  dimension: km {
    type: number
    sql: ${TABLE}.km ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
