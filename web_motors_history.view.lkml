view: web_motors_history {
  sql_table_name: datalake.WebMotorsHistory ;;

  dimension: ad_type {
    type: string
    sql: ${TABLE}.adType ;;
  }

  dimension: base_price {
    type: number
    sql: ${TABLE}.basePrice ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: data_source {
    type: string
    sql: ${TABLE}.dataSource ;;
  }

  dimension: external_id {
    type: string
    sql: ${TABLE}.externalId ;;
  }

  dimension: last_price {
    type: number
    sql: ${TABLE}.lastPrice ;;
  }

  dimension: manufactory_year {
    type: number
    sql: ${TABLE}.manufactoryYear ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: model_year {
    type: number
    sql: ${TABLE}.modelYear ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: offer_date {
    type: string
    sql: ${TABLE}.offerDate ;;
  }

  dimension: offer_type {
    type: string
    sql: ${TABLE}.offerType ;;
  }

  dimension: serial {
    type: string
    sql: ${TABLE}.serial ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
