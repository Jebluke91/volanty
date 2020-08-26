view: teste_o {
  sql_table_name: `volanty-production.spreedsheets_data.teste_o`
    ;;

  dimension: Mês {
    type: string
    sql: ${TABLE}.string_field_0 ;;
  }

  dimension: QTD {
    type: string
    sql: ${TABLE}.string_field_1 ;;
  }

  dimension: Pesquisa {
    type: string
    sql: ${TABLE}.string_field_2 ;;
  }

  dimension: Taxa_Sucesso {
    type: string
    sql: ${TABLE}.string_field_3 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
