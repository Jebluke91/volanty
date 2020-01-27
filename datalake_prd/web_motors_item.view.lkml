view: web_motors_item {
  sql_table_name: datalake_prd.WebMotorsItem ;;

  dimension: ad_type {
    type: string
    sql: ${TABLE}.adType ;;
  }

  dimension: base_price {
    type: number
    sql: ${TABLE}.basePrice ;;
  }

  dimension: body_style {
    type: string
    sql: ${TABLE}.bodyStyle ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: contacts {
    type: string
    sql: ${TABLE}.contacts ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}.createdAt ;;
  }

  dimension: data_source {
    type: string
    sql: ${TABLE}.dataSource ;;
  }

  dimension: external_id {
    type: string
    sql: ${TABLE}.externalId ;;
  }

  dimension: km {
    type: number
    sql: ${TABLE}.km ;;
  }

  dimension: km_category {
    type: number
    sql: ${TABLE}.kmCategory ;;
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

  dimension: updated_at {
    type: string
    sql: ${TABLE}.updatedAt ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
