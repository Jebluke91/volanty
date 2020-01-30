view: performance {
  sql_table_name: views.Performance ;;

  dimension: atingimento_acumulado {
    type: number
    sql: ${TABLE}.atingimento_acumulado ;;
  }

  dimension: atingimento_da_meta {
    type: number
    sql: ${TABLE}.atingimento_da_meta ;;
  }

  dimension: etapa {
    type: string
    sql: ${TABLE}.etapa ;;
  }

  dimension_group: mes {
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
    sql: ${TABLE}.mes ;;
  }

  dimension: meta {
    type: number
    sql: ${TABLE}.meta ;;
  }

  dimension: numero_atual {
    type: number
    sql: ${TABLE}.numero_atual ;;
  }

  dimension: projecao_linear {
    type: number
    sql: ${TABLE}.projecao_linear ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
