view: Aquisitions {
  label: "compras"
  sql_table_name: datalake_prd.Acquisition;;


  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
    primary_key: yes
  }

  dimension: car_brand {
    type: string
    sql: ${TABLE}.car_brand ;;
  }

  dimension: car_km {
    type: number
    sql: ${TABLE}.car_km ;;
  }

  dimension: car_model {
    type: string
    sql: ${TABLE}.car_model ;;
  }

  dimension: car_plate {
    type: string
    sql: ${TABLE}.car_plate ;;
  }

  dimension: car_price_maximum {
    type: number
    sql: ${TABLE}.car_price_maximum ;;
  }

  dimension: car_price_minimum {
    type: number
    sql: ${TABLE}.car_price_minimum ;;
  }

  dimension: car_version {
    type: string
    sql: ${TABLE}.car_version ;;
  }

  dimension: car_year_make {
    type: number
    sql: ${TABLE}.car_year_make ;;
  }

  dimension: car_year_model {
    type: number
    sql: ${TABLE}.car_year_model ;;
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
    sql: CAST(${TABLE}.createDate AS TIMESTAMP) ;;
  }

  dimension_group: deal {
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
    sql: CAST(${TABLE}.deal_date AS TIMESTAMP) ;;
  }

  dimension: deal_extra_description {
    type: string
    sql: ${TABLE}.deal_extra_description ;;
  }

  dimension: deal_extra_expected_value {
    type: number
    sql: ${TABLE}.deal_extra_expectedValue ;;
  }

  dimension: deal_extra_reason {
    type: string
    sql: ${TABLE}.deal_extra_reason ;;
  }

  dimension: deal_extra_repair_value {
    type: number
    sql: ${TABLE}.deal_extra_repairValue ;;
  }

  dimension: deal_extra_user {
    type: string
    sql: ${TABLE}.deal_extra_user ;;
  }

  dimension: deal_status {
    type: string
    sql: ${TABLE}.deal_status ;;
  }

  dimension: deal_value {
    type: number
    sql: ${TABLE}.deal_value ;;
  }

  dimension: media_ga_client_id {
    type: string
    sql: ${TABLE}.media_gaClientId ;;
  }

  dimension: media_ga_session_id {
    type: string
    sql: ${TABLE}.media_gaSessionId ;;
  }

  dimension: media_referrer {
    type: string
    sql: ${TABLE}.media_referrer ;;
  }

  dimension: owner_email {
    type: string
    sql: ${TABLE}.owner_email ;;
  }

  dimension: owner_name {
    type: string
    sql: ${TABLE}.owner_name ;;
  }

  dimension: owner_phone {
    type: string
    sql: ${TABLE}.owner_phone ;;
  }

  dimension: shedule_inspection_date {
    type: number
    sql: ${TABLE}.shedule_inspectionDate ;;
  }

  dimension: shedule_location_id {
    type: string
    sql: ${TABLE}.shedule_locationId ;;
  }

  dimension: shedule_slot_id {
    type: string
    sql: ${TABLE}.shedule_slotId ;;
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
    sql: CAST(${TABLE}.updateDate AS TIMESTAMP) ;;
  }

  measure: count {
    type: count
    drill_fields: [owner_name]
  }
}
