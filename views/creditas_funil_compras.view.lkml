view: creditas_funil_compras {
  sql_table_name: `volanty-production.views.Creditas_Funil_Compras`
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

  dimension: etapa {
    type: string
    sql: ${TABLE}.etapa ;;
  }

  dimension: loja {
    type: string
    sql: ${TABLE}.loja ;;
  }



  dimension: media_origin {
    type: string
    sql: ${TABLE}.media_origin ;;
  }


  dimension: qtd {
    type: number
    sql: ${TABLE}.qtd ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
