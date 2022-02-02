view: inventario_evento {
  sql_table_name: `volanty-production.views.Inventario_Evento`
    ;;

  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: inventory_coordinates_lat {
    type: string
    sql: ${TABLE}.inventory_coordinates_lat ;;
  }

  dimension: inventory_coordinates_long {
    type: string
    sql: ${TABLE}.inventory_coordinates_long ;;
  }

  dimension: inventory_from_qr_code {
    type: string
    sql: ${TABLE}.inventory_fromQrCode ;;
  }

  dimension: inventory_id {
    type: string
    sql: ${TABLE}.inventory_id ;;
  }

  dimension: inventory_location_address {
    type: string
    sql: ${TABLE}.inventory_location_address ;;
  }

  dimension: inventory_location_address_number {
    type: string
    sql: ${TABLE}.inventory_location_addressNumber ;;
  }

  dimension: inventory_location_cav_id {
    type: string
    sql: ${TABLE}.inventory_location_cavId ;;
  }

  dimension: inventory_location_city {
    type: string
    sql: ${TABLE}.inventory_location_city ;;
  }

  dimension: inventory_location_id {
    type: string
    sql: ${TABLE}.inventory_location_id ;;
  }

  dimension: inventory_location_name {
    type: string
    sql: ${TABLE}.inventory_location_name ;;
  }

  dimension: inventory_location_neighborhood {
    type: string
    sql: ${TABLE}.inventory_location_neighborhood ;;
  }

  dimension: inventory_location_state {
    type: string
    sql: ${TABLE}.inventory_location_state ;;
  }

  dimension: inventory_photo {
    type: string
    sql: ${TABLE}.inventory_photo ;;
  }

  dimension: inventory_stock_car_brand {
    type: string
    sql: ${TABLE}.inventory_stock_car_brand ;;
  }

  dimension: inventory_stock_car_km {
    type: string
    sql: ${TABLE}.inventory_stock_car_km ;;
  }

  dimension: inventory_stock_car_model {
    type: string
    sql: ${TABLE}.inventory_stock_car_model ;;
  }

  dimension: inventory_stock_car_plate {
    type: string
    sql: ${TABLE}.inventory_stock_car_plate ;;
  }

  dimension: inventory_stock_car_price_maximum {
    type: string
    sql: ${TABLE}.inventory_stock_car_price_maximum ;;
  }

  dimension: inventory_stock_car_price_minimum {
    type: string
    sql: ${TABLE}.inventory_stock_car_price_minimum ;;
  }

  dimension: inventory_stock_car_price_type {
    type: string
    sql: ${TABLE}.inventory_stock_car_price_type ;;
  }

  dimension: inventory_stock_car_renavam {
    type: string
    sql: ${TABLE}.inventory_stock_car_renavam ;;
  }

  dimension: inventory_stock_car_version {
    type: string
    sql: ${TABLE}.inventory_stock_car_version ;;
  }

  dimension: inventory_stock_car_year_make {
    type: string
    sql: ${TABLE}.inventory_stock_car_year_make ;;
  }

  dimension: inventory_stock_car_year_model {
    type: string
    sql: ${TABLE}.inventory_stock_car_year_model ;;
  }

  dimension: inventory_stock_cav_city {
    type: string
    sql: ${TABLE}.inventory_stock_cav_city ;;
  }

  dimension: inventory_stock_cav_description {
    type: string
    sql: ${TABLE}.inventory_stock_cav_description ;;
  }

  dimension: inventory_stock_cav_id {
    type: string
    sql: ${TABLE}.inventory_stock_cav_id ;;
  }

  dimension: inventory_stock_cav_name {
    type: string
    sql: ${TABLE}.inventory_stock_cav_name ;;
  }

  dimension: inventory_stock_cav_state {
    type: string
    sql: ${TABLE}.inventory_stock_cav_state ;;
  }

  dimension: inventory_stock_id {
    type: string
    sql: ${TABLE}.inventory_stock_id ;;
  }

  dimension: inventory_stock_status {
    type: string
    sql: ${TABLE}.inventory_stock_status ;;
  }

  dimension: inventory_user {
    type: string
    sql: ${TABLE}.inventory_user ;;
  }

  dimension: inventory_vacancy {
    type: string
    sql: ${TABLE}.inventory_vacancy ;;
  }

  dimension: last_update_user {
    type: string
    sql: ${TABLE}.lastUpdateUser ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: stock_car_brand {
    type: string
    sql: ${TABLE}.stock_car_brand ;;
  }

  dimension: stock_car_km {
    type: string
    sql: ${TABLE}.stock_car_km ;;
  }

  dimension: stock_car_model {
    type: string
    sql: ${TABLE}.stock_car_model ;;
  }

  dimension: stock_car_plate {
    type: string
    sql: ${TABLE}.stock_car_plate ;;
  }

  dimension: stock_car_price_maximum {
    type: string
    sql: ${TABLE}.stock_car_price_maximum ;;
  }

  dimension: stock_car_price_minimum {
    type: string
    sql: ${TABLE}.stock_car_price_minimum ;;
  }

  dimension: stock_car_price_type {
    type: string
    sql: ${TABLE}.stock_car_price_type ;;
  }

  dimension: stock_car_renavam {
    type: string
    sql: ${TABLE}.stock_car_renavam ;;
  }

  dimension: stock_car_version {
    type: string
    sql: ${TABLE}.stock_car_version ;;
  }

  dimension: stock_car_year_make {
    type: string
    sql: ${TABLE}.stock_car_year_make ;;
  }

  dimension: stock_car_year_model {
    type: string
    sql: ${TABLE}.stock_car_year_model ;;
  }

  dimension: stock_cav_city {
    type: string
    sql: ${TABLE}.stock_cav_city ;;
  }

  dimension: stock_cav_description {
    type: string
    sql: ${TABLE}.stock_cav_description ;;
  }

  dimension: stock_cav_id {
    type: string
    sql: ${TABLE}.stock_cav_id ;;
  }

  dimension: stock_cav_name {
    type: string
    sql: ${TABLE}.stock_cav_name ;;
  }

  dimension: stock_cav_state {
    type: string
    sql: ${TABLE}.stock_cav_state ;;
  }

  dimension: stock_id {
    type: string
    sql: ${TABLE}.stock_id ;;
  }

  dimension: stock_status {
    type: string
    sql: ${TABLE}.stock_status ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: update_date {
    type: string
    sql: ${TABLE}.updateDate ;;
  }

  measure: count {
    type: count
    drill_fields: [stock_cav_name, inventory_stock_cav_name, inventory_location_name]
  }
}
