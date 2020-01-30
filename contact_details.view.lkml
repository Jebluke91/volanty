view: contact_details {
  sql_table_name: datalake.ContactDetails ;;

  dimension: _id_ {
    type: number
    value_format_name: id
    sql: ${TABLE}._id_ ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: address_complement {
    type: string
    sql: ${TABLE}.addressComplement ;;
  }

  dimension: address_number {
    type: string
    sql: ${TABLE}.addressNumber ;;
  }

  dimension: anunciado_key {
    type: number
    sql: ${TABLE}.anunciadoKey ;;
  }

  dimension: bank {
    type: string
    sql: ${TABLE}.bank ;;
  }

  dimension: branch {
    type: string
    sql: ${TABLE}.branch ;;
  }

  dimension: cellphone_number {
    type: string
    sql: ${TABLE}.cellphoneNumber ;;
  }

  dimension: civ_preference {
    type: string
    sql: ${TABLE}.civPreference ;;
  }

  dimension: cpf {
    type: string
    sql: ${TABLE}.cpf ;;
  }

  dimension: dv {
    type: string
    sql: ${TABLE}.dv ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: inspection_key {
    type: number
    sql: ${TABLE}.inspectionKey ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: name_account {
    type: string
    sql: ${TABLE}.nameAccount ;;
  }

  dimension: neighborhood {
    type: string
    sql: ${TABLE}.neighborhood ;;
  }

  dimension: partition_entry {
    type: number
    sql: ${TABLE}.partition_entry ;;
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

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}.zipcode ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
