view: funil_fila_de_espera {
  sql_table_name: views.Funil_Fila_de_Espera ;;

  dimension_group: data_entrada_fila {
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
    sql: ${TABLE}.data_entrada_fila ;;
  }

  dimension: etapa {
    type: string
    sql: ${TABLE}.etapa ;;
  }

  dimension: valor {
    type: number
    sql: ${TABLE}.valor ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
