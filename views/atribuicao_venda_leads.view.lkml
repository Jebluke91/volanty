view: atribuicao_venda_leads {
  sql_table_name: `volanty-production.views.Atribuicao_Venda_Leads`
    ;;

  dimension_group: data_criacao_lead {
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
    sql: CAST(${TABLE}.data_criacao_lead AS TIMESTAMP) ;;
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

  dimension: inspection_key {
    type: number
    sql: ${TABLE}.inspection_key ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: referencia_lead {
    type: string
    sql: ${TABLE}.referencia_lead ;;
  }

  dimension: tipo_match {
    type: string
    sql: ${TABLE}.tipo_match ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
