view: inspection_v2 {
  sql_table_name: datalake.InspectionV2 ;;

  dimension: _id_ {
    type: number
    value_format_name: id
    sql: ${TABLE}._id_ ;;
  }

  dimension: app_analysis {
    type: string
    sql: ${TABLE}.appAnalysis ;;
  }

  dimension: car_aditional_information_key {
    type: number
    sql: ${TABLE}.carAditionalInformationKey ;;
  }

  dimension: car_details_key {
    type: number
    sql: ${TABLE}.carDetailsKey ;;
  }

  dimension: car_optionals_key {
    type: number
    sql: ${TABLE}.carOptionalsKey ;;
  }

  dimension: car_receipt_key {
    type: number
    sql: ${TABLE}.carReceiptKey ;;
  }

  dimension: checkin {
    type: yesno
    sql: ${TABLE}.checkin ;;
  }

  dimension: client_key {
    type: number
    sql: ${TABLE}.clientKey ;;
  }

  dimension: contact_details_key {
    type: number
    sql: ${TABLE}.contactDetailsKey ;;
  }

  dimension: demand {
    type: string
    sql: ${TABLE}.demand ;;
  }

  dimension: email_user {
    type: string
    sql: ${TABLE}.emailUser ;;
  }

  dimension: general_considerations {
    type: string
    sql: ${TABLE}.generalConsiderations ;;
  }

  dimension_group: inspection {
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
    sql: ${TABLE}.inspectionDate ;;
  }

  dimension: internal_inspection_key {
    type: number
    sql: ${TABLE}.internalInspectionKey ;;
  }

  dimension: items_of_requirements {
    hidden: yes
    sql: ${TABLE}.itemsOfRequirements ;;
  }

  dimension: partition_entry {
    type: number
    sql: ${TABLE}.partition_entry ;;
  }

  dimension: physical_inspection_key {
    type: number
    sql: ${TABLE}.physicalInspectionKey ;;
  }

  dimension: place {
    type: string
    sql: ${TABLE}.place ;;
  }

  dimension: plate {
    type: string
    sql: ${TABLE}.plate ;;
  }

  dimension: price_history_key {
    type: number
    sql: ${TABLE}.priceHistoryKey ;;
  }

  dimension: publication_id {
    type: number
    sql: ${TABLE}.publicationId ;;
  }

  dimension: reproof_considerations {
    type: string
    sql: ${TABLE}.reproofConsiderations ;;
  }

  dimension: requirements_considerations {
    type: string
    sql: ${TABLE}.requirementsConsiderations ;;
  }

  dimension_group: schedule {
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
    sql: ${TABLE}.scheduleDate ;;
  }

  dimension: schedule_key {
    type: number
    sql: ${TABLE}.scheduleKey ;;
  }

  dimension: schedule_status {
    type: number
    sql: ${TABLE}.scheduleStatus ;;
  }

  dimension: select {
    type: yesno
    sql: ${TABLE}.``select`` ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: status_agendor {
    type: string
    sql: ${TABLE}.statusAgendor ;;
  }

  dimension: status_processed {
    type: number
    sql: ${TABLE}.statusProcessed ;;
  }

  dimension_group: stock {
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
    sql: ${TABLE}.stock ;;
  }

  dimension: tag {
    type: string
    sql: ${TABLE}.tag ;;
  }

  dimension: tags {
    hidden: yes
    sql: ${TABLE}.tags ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}

view: inspection_v2__tags {
  dimension: entry {
    type: string
    sql: ${TABLE}.entry ;;
  }
}

view: inspection_v2__items_of_requirements {
  dimension: entry {
    type: string
    sql: ${TABLE}.entry ;;
  }
}
