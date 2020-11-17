view: data_vendido_garantia {
  sql_table_name: `volanty-production.views.Data_Vendido_Garantia`
   ;;

  dimension_group: delivery_date {
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
    sql: ${TABLE}.delivery_date ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: versao {
    type: string
    sql: ${TABLE}.versao ;;
  }
  dimension: buyer_name {
    type: string
    sql: ${TABLE}.buyer_name ;;
  }
  dimension: buyer_state {
    type: string
    sql: ${TABLE}.buyer_state ;;
  }
  dimension: buyer_cell_phone_number {
    type: string
    sql: ${TABLE}.buyer_cell_phone_number ;;
  }
  dimension: buyer_city {
    type: string
    sql: ${TABLE}.buyer_city ;;
  }
  dimension: sell_price {
    type: string
    sql: ${TABLE}.sell_price ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}