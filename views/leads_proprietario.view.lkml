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

  dimension: preLeadId {
    type: string
    sql: ${TABLE}.preLeadId ;;
  }

  dimension: faixa_km {
    type: string
    sql: ${TABLE}.faixa_km ;;
  }

  dimension_group: data_criacao_lead {
    type: time
    timeframes: [
      raw,
      time,
      date,
      day_of_week,
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

  dimension: deal_extra_reason {
    type: string
    sql: ${TABLE}.deal_extra_reason ;;
  }

  dimension: deal_extra_description {
    type: string
    sql: ${TABLE}.deal_extra_description ;;
  }


  dimension: km {
    type: number
    sql: ${TABLE}.km ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: uf {
    type: string
    sql: ${TABLE}.uf ;;
  }

  dimension: maximo_preco_compra {
    type: number
    sql: ${TABLE}.maximo_preco_compra ;;
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

  dimension: minimo_preco_compra {
    type: number
    sql: ${TABLE}.minimo_preco_compra;;
  }

  dimension: minimo_preco_consignado {
    type: number
    sql: ${TABLE}.minimo_preco_consignado;;
  }

  dimension: maximo_preco_consignado {
    type: number
    sql: ${TABLE}.maximo_preco_consignado;;
  }

  dimension: maximo_preco_troca {
    type: number
    sql: ${TABLE}.maximo_preco_troca;;
  }

  dimension: minimo_preco_troca {
    type: number
    sql: ${TABLE}.minimo_preco_troca;;
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

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: telefone_proprietario {
    type: string
    sql: ${TABLE}.telefone_proprietario ;;
  }

  dimension: versao {
    type: string
    sql: ${TABLE}.versao ;;
  }

  dimension: media_utmsource {
    type: string
    sql: ${TABLE}.media_utmsource ;;
  }
  dimension: media_utmCampaign {
    type: string
    sql: ${TABLE}.media_utmCampaign ;;
  }

  dimension: media_utmmedium {
    type: string
    sql: ${TABLE}.media_utmmedium ;;
  }

  dimension: media_interestedInHomeInspection{
    type: yesno
    sql: ${TABLE}.media_interestedInHomeInspection ;;
  }

  dimension: media_priceAcceptable{
    type: yesno
    sql: ${TABLE}.media_priceAcceptable ;;
  }

  dimension: media_priceFeedback{
    type: string
    sql: ${TABLE}.media_priceFeedback ;;
  }

  dimension: media_schedulingStrategy{
    type: string
    sql: ${TABLE}.media_schedulingStrategy ;;
  }
  dimension: media_utmTerm {
    type: string
    sql: ${TABLE}.media_utmTerm ;;
  }
  dimension: media_utmContent {
    type: string
    sql: ${TABLE}.media_utmContent ;;
  }





  measure: count {
    type: count
    drill_fields: []
  }




}
