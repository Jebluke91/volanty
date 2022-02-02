view: inventario {
  sql_table_name: `volanty-production.views.Inventario`
    ;;

  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }

  dimension: coordinates_lat {
    type: string
    sql: ${TABLE}.coordinates_lat ;;
  }

  dimension: coordinates_long {
    type: string
    sql: ${TABLE}.coordinates_long ;;
  }

  dimension: from_qr_code {
    type: string
    sql: ${TABLE}.fromQrCode ;;
  }

  dimension: location_address {
    type: string
    sql: ${TABLE}.location_address ;;
  }

  dimension: location_address_number {
    type: string
    sql: ${TABLE}.location_addressNumber ;;
  }

  dimension: location_cav_id {
    type: string
    sql: ${TABLE}.location_cavId ;;
  }

  dimension: location_city {
    type: string
    sql: ${TABLE}.location_city ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}.location_id ;;
  }

  dimension: location_name {
    type: string
    sql: ${TABLE}.location_name ;;
  }

  dimension: location_neighborhood {
    type: string
    sql: ${TABLE}.location_neighborhood ;;
  }

  dimension: location_state {
    type: string
    sql: ${TABLE}.location_state ;;
  }

  dimension: photo {
    type: string
    sql: ${TABLE}.photo ;;
  }

  dimension: plate {
    type: string
    sql: ${TABLE}.plate ;;
  }

  dimension: stock_car_plate {
    type: string
    sql: ${TABLE}.stock_car_plate ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}.user ;;
  }

  dimension: vacancy {
    type: string
    sql: ${TABLE}.vacancy ;;
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

  dimension_group: create_date {
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
    sql: ${TABLE}.create_date ;;
  }

  measure: count {
    type: count
    drill_fields: [location_name]
  }
}
