view: pos_compra_estoque {
  sql_table_name: `volanty-production.views.Pos_Compra_Estoque`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: car_color {
    type: string
    sql: ${TABLE}.car_color ;;
  }

  dimension: car_km {
    type: string
    sql: ${TABLE}.car_km ;;
  }

  dimension: car_plate {
    type: string
    sql: ${TABLE}.car_plate ;;
  }

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
  }

  dimension: cidade {
    type: string
    sql: ${TABLE}.cidade ;;
  }

  dimension: data_criacao {
    type: string
    sql: ${TABLE}.data_criacao ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: parceiro {
    type: string
    sql: ${TABLE}.parceiro ;;
  }

  dimension: preco_compra {
    type: string
    sql: ${TABLE}.preco_compra ;;
  }

  dimension: purchase_order_id {
    type: string
    sql: ${TABLE}.purchaseOrder_id ;;
  }

  dimension: renavam {
    type: string
    sql: ${TABLE}.renavam ;;
  }

  dimension: requirements_0_status {
    type: string
    sql: ${TABLE}.requirements_0_status ;;
  }

  dimension: requirements_0_type {
    type: string
    sql: ${TABLE}.requirements_0_type ;;
  }

  dimension: requirements_0_update_date {
    type: string
    sql: ${TABLE}.requirements_0_updateDate ;;
  }

  dimension: requirements_1_status {
    type: string
    sql: ${TABLE}.requirements_1_status ;;
  }

  dimension: requirements_1_type {
    type: string
    sql: ${TABLE}.requirements_1_type ;;
  }

  dimension: requirements_1_update_date {
    type: string
    sql: ${TABLE}.requirements_1_updateDate ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: uf {
    type: string
    sql: ${TABLE}.UF ;;
  }

  dimension: updatedate {
    type: string
    sql: ${TABLE}.updatedate ;;
  }

  dimension: usuario {
    type: string
    sql: ${TABLE}.usuario ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
