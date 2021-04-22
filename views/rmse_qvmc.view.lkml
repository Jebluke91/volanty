view: rmse_qvmc {
  sql_table_name: `volanty-production.adhoc_views.RMSE_QVMC`
    ;;

  dimension: mes {
    type: string
    sql: ${TABLE}.mes ;;
  }

  dimension: rmse {
    type: number
    sql: ${TABLE}.RMSE ;;
  }

  dimension_group: data {
    type: time
    timeframes: [
      day_of_month,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.data ;;
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
