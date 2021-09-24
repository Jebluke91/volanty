view: preditas_fallback {
  sql_table_name: `volanty-production.views.Preditas_Fallback`
    ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: fipe_value {
    type: number
    sql: ${TABLE}.fipe_value ;;
  }

  dimension: interval_km_1 {
    type: string
    sql: ${TABLE}.interval_km_1 ;;
  }

  dimension: interval_km_2 {
    type: string
    sql: ${TABLE}.interval_km_2 ;;
  }

  dimension: interval_km_3 {
    type: string
    sql: ${TABLE}.interval_km_3 ;;
  }

  dimension: interval_km_4 {
    type: string
    sql: ${TABLE}.interval_km_4 ;;
  }

  dimension: interval_km_5 {
    type: string
    sql: ${TABLE}.interval_km_5 ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: model_year {
    type: number
    sql: ${TABLE}.modelYear ;;
  }

  dimension: price_km_1 {
    type: number
    sql: ${TABLE}.price_km_1 ;;
  }

  dimension: price_km_2 {
    type: number
    sql: ${TABLE}.price_km_2 ;;
  }

  dimension: price_km_3 {
    type: number
    sql: ${TABLE}.price_km_3 ;;
  }

  dimension: price_km_4 {
    type: number
    sql: ${TABLE}.price_km_4 ;;
  }

  dimension: price_km_5 {
    type: number
    sql: ${TABLE}.price_km_5 ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
