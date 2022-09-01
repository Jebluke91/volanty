view: estoque_anunciado_entrada_saida {
  sql_table_name: `volanty-production.adhoc_views.Estoque_Anunciado_Entrada_Saida`
    ;;

  dimension_group: data {
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
    sql: ${TABLE}.data ;;
  }

  measure: qtd_entrada {
    type: sum
    sql: ${TABLE}.qtd_entrada ;;
  }

  measure: qtd_saida {
    type: sum
    sql: ${TABLE}.qtd_saida ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
