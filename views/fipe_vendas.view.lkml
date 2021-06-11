view: fipe_vendas {
  sql_table_name: `volanty-production.adhoc_views.Fipe_Vendas`
  ;;


  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }
  dimension: model_year {
    type: number
    sql: ${TABLE}.model_year ;;
  }
  dimension: fipe_price {
    type: number
    sql: ${TABLE}.fipe_price ;;
  }
  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;
  }
  dimension: percentage {
    type: number
    sql: ${TABLE}.percentage ;;
  }
  dimension_group: sale_date {
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
    sql: ${TABLE}.sale_date ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

}
