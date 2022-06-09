view: crawler_kavak {
  sql_table_name: `volanty-production.views.Crawler_Kavak`
    ;;

  dimension: apply_uber {
    type: string
    sql: ${TABLE}.apply_uber ;;
  }

  dimension: available {
    type: string
    sql: ${TABLE}.available ;;
  }

  dimension: avg_fuel_consumption {
    type: string
    sql: ${TABLE}.avg_fuel_consumption ;;
  }

  dimension: body_type {
    type: string
    sql: ${TABLE}.body_type ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: brand_model_version {
    type: string
    sql: ${TABLE}.brand_model_version ;;
  }

  dimension: car_cluster {
    type: string
    sql: ${TABLE}.car_cluster ;;
  }

  dimension: car_cluster_v2 {
    type: string
    sql: ${TABLE}.car_cluster_v2 ;;
  }

  dimension: car_downpayment {
    type: string
    sql: ${TABLE}.car_downpayment ;;
  }

  dimension: color {
    type: string
    sql: ${TABLE}.color ;;
  }

  dimension: delivery_date {
    type: string
    sql: ${TABLE}.delivery_date ;;
  }

  dimension: external_id {
    type: string
    sql: ${TABLE}.external_id ;;
  }

  dimension: final_price {
    type: number
    sql: ${TABLE}.final_price ;;
  }

  dimension: fuel {
    type: string
    sql: ${TABLE}.fuel ;;
  }

  dimension: gear {
    type: string
    sql: ${TABLE}.gear ;;
  }

  dimension: horse_power {
    type: string
    sql: ${TABLE}.horse_power ;;
  }

  dimension: km {
    type: number
    sql: ${TABLE}.km ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: model_year {
    type: number
    sql: ${TABLE}.model_year ;;
  }

  dimension: num_passengers {
    type: string
    sql: ${TABLE}.num_passengers ;;
  }

  dimension_group: offer {
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
    sql: ${TABLE}.offerDate ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: promotion {
    type: string
    sql: ${TABLE}.promotion ;;
  }

  dimension: promotion_color {
    type: string
    sql: ${TABLE}.promotion_color ;;
  }

  dimension: promotion_name {
    type: string
    sql: ${TABLE}.promotion_name ;;
  }

  dimension: promotion_price {
    type: string
    sql: ${TABLE}.promotion_price ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: stat {
    type: string
    sql: ${TABLE}.stat ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: traction {
    type: string
    sql: ${TABLE}.traction ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updatedAt ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }

  measure: count {
    type: count
    drill_fields: [promotion_name]
  }
}
