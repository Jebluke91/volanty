view: rmse_qvmc {
  sql_table_name: `volanty-production.adhoc_views.RMSE_QVMC`
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

  dimension: mes {
    type: string
    sql: ${TABLE}.mes ;;
  }

  dimension: rmse {
    type: number
    sql: ${TABLE}.RMSE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
