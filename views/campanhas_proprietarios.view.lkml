view: campanhas_proprietarios {
  sql_table_name: `volanty-production.views.Campanhas_Proprietarios`
    ;;

  dimension: agendamentos_express {
    type: number
    sql: ${TABLE}.Agendamentos_Express ;;
  }

  dimension: agendamentos_selecionados {
    type: number
    sql: ${TABLE}.Agendamentos_Selecionados ;;
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
    sql: ${TABLE}.Data ;;
  }

  dimension: qtd_avaliacao_selecionados {
    type: number
    sql: ${TABLE}.qtd_avaliacao_selecionados ;;
  }

  dimension: qtd_compras_selecionados {
    type: number
    sql: ${TABLE}.qtd_compras_selecionados ;;
  }

  dimension: simulacoes {
    type: number
    sql: ${TABLE}.Simulacoes ;;
  }

  dimension: simulacoes_express {
    type: number
    sql: ${TABLE}.Simulacoes_Express ;;
  }

  dimension: simulacoes_selecionados {
    type: number
    sql: ${TABLE}.Simulacoes_Selecionados ;;
  }

  dimension: utm_campaign {
    type: string
    sql: ${TABLE}.utm_campaign ;;
  }

  dimension: utm_source {
    type: string
    sql: ${TABLE}.utm_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
