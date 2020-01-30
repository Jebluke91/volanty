view: people {
  sql_table_name: datalake.People ;;

  dimension: _id_ {
    type: number
    value_format_name: id
    sql: ${TABLE}._id_ ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: car_model {
    type: string
    sql: ${TABLE}.carModel ;;
  }

  dimension: car_year {
    type: number
    sql: ${TABLE}.carYear ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: max_city {
    type: number
    sql: ${TABLE}.maxCity ;;
  }

  dimension: max_country {
    type: number
    sql: ${TABLE}.maxCountry ;;
  }

  dimension: medium_city {
    type: number
    sql: ${TABLE}.mediumCity ;;
  }

  dimension: medium_country {
    type: number
    sql: ${TABLE}.mediumCountry ;;
  }

  dimension: min_city {
    type: number
    sql: ${TABLE}.minCity ;;
  }

  dimension: min_country {
    type: number
    sql: ${TABLE}.minCountry ;;
  }

  dimension: partition_entry {
    type: number
    sql: ${TABLE}.partition_entry ;;
  }

  dimension: price_fipe {
    type: number
    sql: ${TABLE}.priceFIPE ;;
  }

  dimension: refereer {
    type: string
    sql: ${TABLE}.refereer ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: uf {
    type: string
    sql: ${TABLE}.uf ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
