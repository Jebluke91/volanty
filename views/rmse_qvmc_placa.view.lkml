view: rmse_qvmc_placa {
  sql_table_name: `volanty-production.adhoc_views.RMSE_QVMC_Placa`
    ;;

  dimension_group: data {
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
    sql: ${TABLE}.data ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  dimension: preco_venda {
    type: number
    sql: ${TABLE}.preco_venda ;;
  }

  dimension: precofipe {
    type: number
    sql: ${TABLE}.precofipe ;;
  }

  dimension: precomedio_ajustado {
    type: number
    sql: ${TABLE}.precomedio_ajustado ;;
  }

  dimension: rmse {
    type: number
    sql: ${TABLE}.RMSE ;;
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
