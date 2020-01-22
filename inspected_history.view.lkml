view: inspected_history {
  sql_table_name: datalake.InspectedHistory ;;

  dimension: _id_ {
    type: number
    value_format_name: id
    sql: ${TABLE}._id_ ;;
  }

  dimension: demand {
    type: string
    sql: ${TABLE}.demand ;;
  }

  dimension: general_considerations {
    type: string
    sql: ${TABLE}.generalConsiderations ;;
  }

  dimension: inspected_key {
    type: number
    sql: ${TABLE}.inspectedKey ;;
  }

  dimension: partition_entry {
    type: number
    sql: ${TABLE}.partition_entry ;;
  }

  dimension: reproof_considerations {
    type: string
    sql: ${TABLE}.reproofConsiderations ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension_group: update {
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
    sql: ${TABLE}.updateDate ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}.user ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
