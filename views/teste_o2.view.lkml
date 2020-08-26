view: teste_o2 {
  sql_table_name: `volanty-production.spreedsheets_data.teste_o2`
    ;;

  dimension_group: Mês {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.string_field_0 ;;
  }

  dimension: Qtd {
    type: number
    sql: ${TABLE}.string_field_1 ;;
  }

  dimension: Nota {
    type: number
    sql: ${TABLE}.string_field_2 ;;
  }

  dimension: Taxa_de_Sucesso {
    type: number
    sql: ${TABLE}.string_field_3 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
