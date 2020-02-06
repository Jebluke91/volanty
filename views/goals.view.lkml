view: goals {
  sql_table_name: management.Goals ;;

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  dimension_group: month {
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
    sql: ${TABLE}.month ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  measure: goal_value {
    type: max
    sql:${value} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
