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
    sql: ${TABLE}.M__s ;;
  }

  dimension: Qtd {
    type: number
    sql: ${TABLE}.QTD ;;
  }

  dimension: Nota {
    type: number
    sql: ${TABLE}.Pesquisa ;;
  }

  dimension: Taxa_de_Sucesso {
    type: number
    sql: ${TABLE}.Taxa_de_Sucesso ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
