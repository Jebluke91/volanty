view: plano_reducao_green_friday {
  sql_table_name: `volanty-production.views.Plano_Reducao_Green_Friday`
    ;;

  dimension: acao {
    type: string
    sql: ${TABLE}.acao ;;
  }

  dimension_group: data_acao {
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
    sql: ${TABLE}.data_acao ;;
  }

  dimension_group: data_vendido {
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
    sql: ${TABLE}.data_vendido ;;
  }

  dimension: leads_semana_anterior {
    type: number
    sql: ${TABLE}.leads_semana_anterior ;;
  }

  dimension: leads_semana_anterior_por_dia {
    type: number
    sql: ${TABLE}.leads_semana_anterior_por_dia ;;
  }

  dimension: leads_semana_posterior {
    type: number
    sql: ${TABLE}.leads_semana_posterior ;;
  }

  dimension: leads_semana_posterior_por_dia {
    type: number
    sql: ${TABLE}.leads_semana_posterior_por_dia ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
