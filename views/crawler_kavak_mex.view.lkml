view: crawler_kavak_mex {
  sql_table_name: `volanty-production.views.Crawler_Kavak_Mex`
    ;;

  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }

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

  dimension: final_price {
    type: string
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

  dimension: kavak_version {
    type: string
    sql: ${TABLE}.kavak_version ;;
  }

  dimension: km {
    type: string
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
    type: string
    sql: ${TABLE}.model_year ;;
  }

  dimension: num_passengers {
    type: string
    sql: ${TABLE}.num_passengers ;;
  }

  dimension: offer_date {
    type: string
    sql: ${TABLE}.offer_date ;;
  }

  dimension: price {
    type: string
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

  dimension: updated_at {
    type: string
    sql: ${TABLE}.updated_at ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
    drill_fields: [promotion_name]
  }
}
