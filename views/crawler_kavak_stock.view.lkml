view: crawler_kavak_stock {
  sql_table_name: `volanty-production.views.Crawler_Kavak_Stock`
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
    sql: ${TABLE}.DATA ;;
  }

  dimension: estoque {
    type: number
    sql: ${TABLE}.estoque ;;
  }

  dimension: qtd_entrada {
    type: number
    sql: ${TABLE}.qtd_entrada ;;
  }

  dimension: qtd_saida {
    type: number
    sql: ${TABLE}.qtd_saida ;;
  }

  dimension: qtd_vendas_acum {
    type: number
    sql: ${TABLE}.qtd_vendas_acum ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
