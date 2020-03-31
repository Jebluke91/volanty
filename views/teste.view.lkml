view: teste {
  sql_table_name: `volanty-production.spreedsheets_data.teste`
    ;;

  dimension: carro {
    type: string
    sql: ${TABLE}.carro ;;
  }

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

  dimension: valor {
    type: number
    sql: ${TABLE}.valor ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
