view: simulacoes_qvmc {
  sql_table_name: `volanty-production.adhoc_views.Simulacoes`
    ;;

  dimension: agendou_avaliacao {
    type: string
    sql: ${TABLE}.agendou_avaliacao ;;
  }

  dimension: ano_modelo {
    type: number
    sql: ${TABLE}.ano_modelo ;;
  }

  dimension: canal_origem {
    type: string
    sql: ${TABLE}.canal_origem ;;
  }

  dimension: cor {
    type: string
    sql: ${TABLE}.cor ;;
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

  dimension: dia_agendado_para {
    type: string
    sql: ${TABLE}.dia_agendado_para ;;
  }

  dimension: email_agendamento {
    type: string
    sql: ${TABLE}.email_agendamento ;;
  }

  dimension: faixa_km {
    type: string
    sql: ${TABLE}.Faixa_KM ;;
  }

  dimension: ga_client_id {
    type: string
    sql: ${TABLE}.ga_client_id ;;
  }

  dimension: ga_session_id {
    type: string
    sql: ${TABLE}.ga_session_id ;;
  }

  dimension: hora_agendado_para {
    type: string
    sql: ${TABLE}.hora_agendado_para ;;
  }

  dimension: id_cav {
    type: string
    sql: ${TABLE}.id_cav ;;
  }

  dimension: km {
    type: number
    sql: ${TABLE}.km ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: maximo_preco_compra {
    type: number
    sql: ${TABLE}.maximo_preco_compra ;;
  }

  dimension: maximo_preco_consignado {
    type: number
    sql: ${TABLE}.maximo_preco_consignado ;;
  }

  dimension: maximo_preco_troca {
    type: number
    sql: ${TABLE}.maximo_preco_troca ;;
  }

  dimension: minimo_preco_compra {
    type: number
    sql: ${TABLE}.minimo_preco_compra ;;
  }

  dimension: minimo_preco_consignado {
    type: number
    sql: ${TABLE}.minimo_preco_consignado ;;
  }

  dimension: minimo_preco_troca {
    type: number
    sql: ${TABLE}.minimo_preco_troca ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: modelo_escolhido {
    type: string
    sql: ${TABLE}.modelo_escolhido ;;
  }

  dimension: nome_agendamento {
    type: string
    sql: ${TABLE}.nome_agendamento ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  dimension: preco_max {
    type: number
    sql: ${TABLE}.preco_max ;;
  }

  dimension: preco_min {
    type: number
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

  dimension: tipo_precificacao_selecionado {
    type: string
    sql: ${TABLE}.tipo_precificacao_selecionado ;;
  }

  dimension: uf {
    type: string
    sql: ${TABLE}.uf ;;
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
