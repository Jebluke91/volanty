view: agendamentos_qvmc30 {
  sql_table_name: views.Agendamentos_QVMC30 ;;

  dimension: agendou_avaliacao {
    type: yesno
    sql: ${TABLE}.agendou_avaliacao ;;
  }

  dimension: ano_modelo {
    type: string
    sql: ${TABLE}.ano_modelo ;;
  }

  dimension_group: data_agendado_para {
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
    sql: ${TABLE}.data_agendado_para ;;
  }

  dimension_group: data_sessao {
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
    sql: ${TABLE}.data_sessao ;;
  }

  dimension: email_agendamento {
    type: string
    sql: ${TABLE}.email_agendamento ;;
  }

  dimension: ga_client_id {
    type: string
    sql: ${TABLE}.ga_client_id ;;
  }

  dimension: ga_session_id {
    type: string
    sql: ${TABLE}.ga_session_id ;;
  }

  dimension: km {
    type: string
    sql: ${TABLE}.km ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: modelo_carro {
    type: string
    sql: ${TABLE}.modelo_carro ;;
  }

  dimension: nome_agendamento {
    type: string
    sql: ${TABLE}.nome_agendamento ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
    primary_key: yes
  }

  dimension: preco_max {
    type: string
    sql: ${TABLE}.preco_max ;;
  }

  dimension: preco_min {
    type: string
    sql: ${TABLE}.preco_min ;;
  }

  dimension: referer {
    type: string
    sql: ${TABLE}.referer ;;
  }

  dimension: telefone_agendamento {
    type: string
    sql: ${TABLE}.telefone_agendamento ;;
  }

  dimension: utm_campaign {
    type: string
    sql: ${TABLE}.utm_campaign ;;
  }

  dimension: utm_content {
    type: string
    sql: ${TABLE}.utm_content ;;
  }

  dimension: utm_medium {
    type: string
    sql: ${TABLE}.utm_medium ;;
  }

  dimension: utm_source {
    type: string
    sql: ${TABLE}.utm_source ;;
  }

  dimension: utm_term {
    type: string
    sql: ${TABLE}.utm_term ;;
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
