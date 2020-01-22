view: price_history {
  sql_table_name: datalake.PriceHistory ;;

  dimension: _id_ {
    type: number
    value_format_name: id
    sql: ${TABLE}._id_ ;;
  }

  dimension: ad_price {
    type: number
    sql: ${TABLE}.adPrice ;;
  }

  dimension_group: data_inicio_estoque {
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
    sql: ${TABLE}.dataInicioEstoque ;;
  }

  dimension: greater_than_fipe {
    type: yesno
    sql: ${TABLE}.greaterThanFipe ;;
  }

  dimension: inspection_key {
    type: number
    sql: ${TABLE}.inspectionKey ;;
  }

  dimension: observation {
    type: string
    sql: ${TABLE}.observation ;;
  }

  dimension: old_ad_price {
    type: number
    sql: ${TABLE}.oldAdPrice ;;
  }

  dimension: partition_entry {
    type: number
    sql: ${TABLE}.partition_entry ;;
  }

  dimension: plate {
    type: string
    sql: ${TABLE}.plate ;;
  }

  dimension: sell_price {
    type: number
    sql: ${TABLE}.sellPrice ;;
  }

  dimension: suggested_price {
    type: number
    sql: ${TABLE}.suggestedPrice ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
