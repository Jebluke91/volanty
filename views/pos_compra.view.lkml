view: pos_compra {
  sql_table_name: `volanty-production.views.Pos_Compra`
    ;;

  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }

  dimension: avarias_avaliacao {
    type: number
    sql: ${TABLE}.avarias_avaliacao ;;
  }

  dimension: avarias_reavaliacao {
    type: number
    sql: ${TABLE}.avarias_reavaliacao ;;
  }

  dimension: avarias_oficina {
    type: number
    sql: ${TABLE}.avarias_oficina ;;
  }

  dimension: board_value {
    type: string
    sql: ${TABLE}.Board_Value ;;
  }

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
  }



  dimension: data_criacao {
    type: string
    sql: ${TABLE}.data_criacao ;;
  }

  dimension: km {
    type: string
    sql: ${TABLE}.km ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  dimension: preco {
    type: number
    sql: ${TABLE}.preco ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: stock_id {
    type: string
    sql: ${TABLE}.stock_id ;;
  }

  dimension: stock_type {
    type: string
    sql: ${TABLE}.stock_type ;;
  }

  dimension: uf {
    type: string
    sql: ${TABLE}.UF ;;
  }

  dimension: update_date {
    type: string
    sql: ${TABLE}.updateDate ;;
  }

  dimension: usuario {
    type: string
    sql: ${TABLE}.usuario ;;
  }

  dimension: value_type {
    type: string
    sql: ${TABLE}.Value_Type ;;
  }

  dimension: versao {
    type: string
    sql: ${TABLE}.versao ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
