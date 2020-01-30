view: leads {
  sql_table_name: datalake.Leads ;;

  dimension: _id_ {
    type: number
    value_format_name: id
    sql: ${TABLE}._id_ ;;
  }

  dimension: auto_certo_key {
    type: number
    sql: ${TABLE}.autoCertoKey ;;
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

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: inspection_key {
    type: number
    sql: ${TABLE}.inspectionKey ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: partition_entry {
    type: number
    sql: ${TABLE}.partition_entry ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: price_history_key {
    type: number
    sql: ${TABLE}.priceHistoryKey ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }

  dimension: utm_campaign {
    type: string
    sql: ${TABLE}.utmCampaign ;;
  }

  dimension: utm_content {
    type: string
    sql: ${TABLE}.utmContent ;;
  }

  dimension: utm_medium {
    type: string
    sql: ${TABLE}.utmMedium ;;
  }

  dimension: utm_source {
    type: string
    sql: ${TABLE}.utmSource ;;
  }

  dimension: utm_term {
    type: string
    sql: ${TABLE}.utmTerm ;;
  }

  dimension: utm_volanty {
    type: string
    sql: ${TABLE}.utmVolanty ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
