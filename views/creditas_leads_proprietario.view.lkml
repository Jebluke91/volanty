view: creditas_leads_proprietario {
  sql_table_name: `volanty-production.views.Creditas_Leads_Proprietario`
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

  dimension: deal_extra_description {
    type: string
    sql: ${TABLE}.deal_extra_description ;;
  }

  dimension: deal_extra_expected_value {
    type: string
    sql: ${TABLE}.deal_extra_expectedValue ;;
  }

  dimension: deal_extra_reason {
    type: string
    sql: ${TABLE}.deal_extra_reason ;;
  }

  dimension: deal_extra_repairvalue {
    type: string
    sql: ${TABLE}.deal_extra_repairvalue ;;
  }

  dimension: deal_status {
    type: string
    sql: ${TABLE}.deal_status ;;
  }

  dimension: deal_value {
    type: string
    sql: ${TABLE}.deal_value ;;
  }

  dimension: email_proprietario {
    type: string
    sql: ${TABLE}.email_proprietario ;;
  }

  dimension: faixa_km {
    type: string
    sql: ${TABLE}.Faixa_KM ;;
  }

  dimension: km {
    type: number
    sql: ${TABLE}.km ;;
  }

  dimension: lead_id {
    type: string
    sql: ${TABLE}.lead_id ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: maximo_preco_compra {
    type: string
    sql: ${TABLE}.maximo_preco_compra ;;
  }

  dimension: maximo_preco_consignado {
    type: string
    sql: ${TABLE}.maximo_preco_consignado ;;
  }

  dimension: maximo_preco_troca {
    type: string
    sql: ${TABLE}.maximo_preco_troca ;;
  }

  dimension: media_ga_client_id {
    type: string
    sql: ${TABLE}.media_gaClientId ;;
  }

  dimension: media_ga_session_id {
    type: string
    sql: ${TABLE}.media_gaSessionId ;;
  }

  dimension: media_interested_in_home_inspection {
    type: string
    sql: ${TABLE}.media_interestedInHomeInspection ;;
  }

  dimension: media_origin {
    type: string
    sql: ${TABLE}.media_origin ;;
  }

  dimension: media_partner {
    type: string
    sql: ${TABLE}.media_partner ;;
  }

  dimension: media_price_acceptable {
    type: yesno
    sql: ${TABLE}.media_priceAcceptable ;;
  }

  dimension: media_price_feedback {
    type: string
    sql: ${TABLE}.media_priceFeedback ;;
  }

  dimension: media_referrer {
    type: string
    sql: ${TABLE}.media_referrer ;;
  }

  dimension: media_scheduling_strategy {
    type: string
    sql: ${TABLE}.media_schedulingStrategy ;;
  }

  dimension: media_utm_campaign {
    type: string
    sql: ${TABLE}.media_utmCampaign ;;
  }

  dimension: media_utm_content {
    type: string
    sql: ${TABLE}.media_utmContent ;;
  }

  dimension: media_utm_term {
    type: string
    sql: ${TABLE}.media_utmTerm ;;
  }

  dimension: media_utmmedium {
    type: string
    sql: ${TABLE}.media_utmmedium ;;
  }

  dimension: media_utmsource {
    type: string
    sql: ${TABLE}.media_utmsource ;;
  }

  dimension: minimo_preco_compra {
    type: string
    sql: ${TABLE}.minimo_preco_compra ;;
  }

  dimension: minimo_preco_consignado {
    type: string
    sql: ${TABLE}.minimo_preco_consignado ;;
  }

  dimension: minimo_preco_troca {
    type: string
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

  dimension: nome_proprietario {
    type: string
    sql: ${TABLE}.nome_proprietario ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  dimension: pre_lead_id {
    type: string
    sql: ${TABLE}.preLeadId ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: telefone_proprietario {
    type: string
    sql: ${TABLE}.telefone_proprietario ;;
  }

  dimension: uf {
    type: string
    sql: ${TABLE}.UF ;;
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
