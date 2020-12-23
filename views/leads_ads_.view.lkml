view: leads_ads_ {
  sql_table_name: `volanty-production.spreedsheets_data.Leads_ads_`
    ;;

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: day {
    type: number
    sql: ${TABLE}.day ;;
  }

  dimension: leads {
    type: number
    sql: ${TABLE}.leads ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.product ;;
  }

  dimension: referencia_lead {
    type: string
    sql: ${TABLE}.referencia_lead ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
