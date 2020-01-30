view: visit_detail {
  sql_table_name: datalake.VisitDetail ;;

  dimension: _id_ {
    type: number
    value_format_name: id
    sql: ${TABLE}._id_ ;;
  }

  dimension: ad_price {
    type: number
    sql: ${TABLE}.adPrice ;;
  }

  dimension: buyer_email {
    type: string
    sql: ${TABLE}.buyerEmail ;;
  }

  dimension: buyer_name {
    type: string
    sql: ${TABLE}.buyerName ;;
  }

  dimension: buyer_phone {
    type: string
    sql: ${TABLE}.buyerPhone ;;
  }

  dimension_group: create {
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
    sql: ${TABLE}.createDate ;;
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

  dimension: inspection_key {
    type: number
    sql: ${TABLE}.inspectionKey ;;
  }

  dimension: inspector_name {
    type: string
    sql: ${TABLE}.inspectorName ;;
  }

  dimension: level_of_interest_feedback {
    type: number
    sql: ${TABLE}.levelOfInterestFeedback ;;
  }

  dimension: negotiated_price {
    type: number
    sql: ${TABLE}.negotiatedPrice ;;
  }

  dimension: negotiated_price_feedback {
    type: number
    sql: ${TABLE}.negotiatedPriceFeedback ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: notes_feedback {
    type: string
    sql: ${TABLE}.notesFeedback ;;
  }

  dimension: partition_entry {
    type: number
    sql: ${TABLE}.partition_entry ;;
  }

  dimension: place {
    type: string
    sql: ${TABLE}.place ;;
  }

  dimension: refereer {
    type: string
    sql: ${TABLE}.refereer ;;
  }

  dimension: sell_price {
    type: number
    sql: ${TABLE}.sellPrice ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}.user ;;
  }

  dimension_group: visited {
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
    sql: ${TABLE}.visitedDate ;;
  }

  measure: count {
    type: count
    drill_fields: [buyer_name, inspector_name]
  }
}
