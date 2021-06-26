view: indicarrao_cadastros {
  sql_table_name: `volanty-production.views.Indicarrao_cadastros`
    ;;

  dimension_group: data_cadastro {
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
    sql: ${TABLE}.data_cadastro ;;
  }

  dimension: email_usuario {
    type: string
    sql: ${TABLE}.email_usuario ;;
  }

  dimension: qtd_agendamentos {
    type: number
    sql: ${TABLE}.qtd_Agendamentos ;;
  }

  dimension: qtd_indicacoes {
    type: number
    sql: ${TABLE}.qtd_Indicacoes ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
