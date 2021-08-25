view: creditas_plano_acao_estoque_critico {
  sql_table_name: `volanty-production.views.Creditas_Plano_Acao_Estoque_Critico`
    ;;

  dimension: a____o {
    type: string
    sql: ${TABLE}.A____O ;;
  }

  dimension_group: data_a____o {
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
    sql: ${TABLE}.Data_A____o ;;
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
