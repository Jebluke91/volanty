view: buyer_details {
  sql_table_name: datalake.BuyerDetails ;;

  dimension: _id_ {
    type: number
    value_format_name: id
    sql: ${TABLE}._id_ ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: anunciado_key {
    type: number
    sql: ${TABLE}.anunciadoKey ;;
  }

  dimension: cellphone_number {
    type: number
    sql: ${TABLE}.cellphoneNumber ;;
  }

  dimension: cpf {
    type: number
    sql: ${TABLE}.cpf ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: partition_entry {
    type: number
    sql: ${TABLE}.partition_entry ;;
  }

  dimension: rg {
    type: string
    sql: ${TABLE}.rg ;;
  }

  dimension_group: sale {
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
    sql: ${TABLE}.saleDate ;;
  }

  dimension: sale_price_value {
    type: number
    sql: ${TABLE}.salePriceValue ;;
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

  dimension: volanty_sales_commission {
    type: number
    sql: ${TABLE}.volantySalesCommission ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
