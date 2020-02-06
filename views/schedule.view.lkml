view: schedule {
  sql_table_name: datalake_prd.Schedule ;;

  dimension: _id_ {
    type: number
    value_format_name: id
    sql: ${TABLE}._id_ ;;
  }

  dimension: car {
    type: string
    sql: ${TABLE}.car ;;
  }

  dimension: car_brand {
    type: string
    sql: ${TABLE}.carBrand ;;
  }

  dimension: car_model {
    type: string
    sql: ${TABLE}.carModel ;;
  }

  dimension: car_year {
    type: number
    sql: ${TABLE}.carYear ;;
  }

  dimension: day {
    type: number
    sql: ${TABLE}.day ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: hour {
    type: number
    sql: ${TABLE}.hour ;;
  }

  dimension: km {
    type: number
    sql: ${TABLE}.km ;;
  }

  dimension: manager {
    type: string
    sql: ${TABLE}.manager ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: optout {
    type: string
    sql: ${TABLE}.optout ;;
  }

  dimension: partition_entry {
    type: number
    sql: ${TABLE}.partition_entry ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: place {
    type: string
    sql: ${TABLE}.place ;;
  }

  dimension: plate {
    type: string
    sql: ${TABLE}.plate ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}.reason ;;
  }

  dimension: refereer {
    type: string
    sql: ${TABLE}.refereer ;;
  }

  dimension: reseller {
    type: yesno
    sql: ${TABLE}.reseller ;;
  }

  dimension: reverted {
    type: string
    sql: ${TABLE}.reverted ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension_group: update {
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
    sql: ${TABLE}.updateDate ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}.user ;;
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

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
