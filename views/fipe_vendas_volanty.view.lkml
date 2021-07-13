view: fipe_vendas_volanty {
  sql_table_name: `volanty-production.views.Fipe_Vendas_Volanty`
    ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: cav_venda {
    type: string
    sql: ${TABLE}.cav_venda ;;
  }

  dimension: fipe_month_year {
    type: string
    sql: ${TABLE}.fipe_month_year ;;
  }

  dimension: fipe_price {
    type: string
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
    type: number
    sql: ${TABLE}.modelyear
    value_format: "0" ;;
  }

  dimension: origem {
    type: string
    sql: ${TABLE}.origem ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  dimension: produto_venda {
    type: string
    sql: ${TABLE}.produto_venda ;;
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

  dimension: uf_venda {
    type: string
    sql: ${TABLE}.uf_venda ;;
  }

  dimension: versao {
    type: string
    sql: ${TABLE}.versao ;;
  }

  dimension: percentage {
    type: number
    sql: ${TABLE}.percentage ;;
}

  measure: count {
    type: count
    drill_fields: []
  }
}
