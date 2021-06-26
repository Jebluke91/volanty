view: fipe_vendas {
  sql_table_name: `volanty-production.views.Fipe_Vendas`
    ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: fipe_price {
    type: number
    sql: ${TABLE}.fipe_price ;;
  }

  dimension: fornecedor {
    type: string
    sql: ${TABLE}.fornecedor ;;
  }

  dimension: inspection_key {
    type: number
    sql: ${TABLE}.inspection_key ;;
  }

  dimension: km {
    type: number
    sql: ${TABLE}.km ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: modelyear {
    type: string
    sql: ${TABLE}.modelyear ;;
  }

  dimension: origem {
    type: string
    sql: ${TABLE}.origem ;;
  }

  dimension: percentage {
    type: number
    sql: ${TABLE}.percentage ;;
  }

  dimension_group: sale {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.sale_date ;;
  }

  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;
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
