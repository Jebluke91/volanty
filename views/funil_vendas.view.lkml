view: funil_vendas {
  sql_table_name: `volanty-production.views.Funil_Vendas`
    ;;

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
  }

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
    sql: ${TABLE}.DATA ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }

  dimension: etapa {
    type: string
    sql: ${TABLE}.etapa ;;
  }

  dimension: qtd {
    type: number
    sql: ${TABLE}.qtd ;;
  }

  dimension: referencia_lead {
    type: string
    sql: ${TABLE}.referencia_lead ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
