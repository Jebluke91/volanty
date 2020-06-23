view: leads_proprietario {
  sql_table_name: `volanty-production.views.Leads_Proprietario`
    ;;

  dimension: ano_modelo {
    type: number
    sql: ${TABLE}.ano_modelo ;;
  }

  dimension: cav {
    type: string
    sql: ${TABLE}.Cav ;;
  }

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

  dimension_group: data_inspecao_agendada {
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
    sql: CAST(${TABLE}.data_inspecao_agendada AS TIMESTAMP) ;;
  }

  dimension: email_proprietario {
    type: string
    sql: ${TABLE}.email_proprietario ;;
  }

  dimension: km {
    type: number
    sql: ${TABLE}.km ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: maximo_preco {
    type: number
    sql: ${TABLE}.maximo_preco ;;
  }

  dimension: media_ga_client_id {
    type: string
    sql: ${TABLE}.media_gaClientId ;;
  }

  dimension: media_ga_session_id {
    type: string
    sql: ${TABLE}.media_gaSessionId ;;
  }

  dimension: media_origin {
    type: string
    sql: ${TABLE}.media_origin ;;
  }

  dimension: media_referrer {
    type: string
    sql: ${TABLE}.media_referrer ;;
  }

  dimension: minimo_preco {
    type: number
    sql: ${TABLE}.minimo_preco ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: nome_proprietario {
    type: string
    sql: ${TABLE}.nome_proprietario ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: telefone_proprietario {
    type: string
    sql: ${TABLE}.telefone_proprietario ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
