view: leads_compradores {
  sql_table_name: `volanty-production.views.Leads_Compradores`
    ;;

  dimension: ano_modelo {
    type: string
    sql: ${TABLE}.ano_modelo ;;
  }

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
  }

  dimension: utm_source {
    type: string
    sql: ${TABLE}.utmSource ;;
  }

  dimension: cav_mercado_livre {
    type: string
    sql: ${TABLE}.Cav_MercadoLivre ;;
  }

  dimension: cor {
    type: string
    sql: ${TABLE}.cor ;;
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
    sql: ${TABLE}.data_criacao_lead ;;
  }

  dimension: email_lead {
    type: string
    sql: ${TABLE}.email_lead ;;
  }

  dimension: empresa {
    type: string
    sql: ${TABLE}.empresa ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }

  dimension: financeintention {
    type: string
    sql: ${TABLE}.financeintention ;;
  }

  dimension: insuranceintention {
    type: string
    sql: ${TABLE}.insuranceintention ;;
  }

  dimension: inspectionkey {
    type: number
    sql: ${TABLE}.inspectionkey ;;
  }

  dimension: lead_id {
    type: string
    sql: ${TABLE}.lead_id ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: media___gaclientid {
    type: string
    sql: ${TABLE}.media___gaclientid ;;
  }

  dimension: media__gahitid {
    type: string
    sql: ${TABLE}.media__gahitid ;;
  }

  dimension: media__gasessionid {
    type: string
    sql: ${TABLE}.media__gasessionid ;;
  }

  dimension: media_reference {
    type: string
    sql: ${TABLE}.media_reference ;;
  }

  dimension: media_sp_domain_session_id {
    type: string
    sql: ${TABLE}.media_spDomainSessionId ;;
  }

  dimension: media_sp_domain_user_id {
    type: string
    sql: ${TABLE}.media_spDomainUserId ;;
  }

  dimension: mensagem {
    type: string
    sql: ${TABLE}.mensagem ;;
  }

  dimension: meta_nome_ad {
    type: string
    sql: ${TABLE}.meta_nome_ad ;;
  }

  dimension: meta_nome_campanha {
    type: string
    sql: ${TABLE}.meta_nome_campanha ;;
  }

  dimension: meta_prometed {
    type: string
    sql: ${TABLE}.meta_prometed ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: nome_lead {
    type: string
    sql: ${TABLE}.nome_lead ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  dimension: preco_por {
    type: number
    sql: ${TABLE}.preco_por ;;
  }

  dimension: produto {
    type: string
    sql: ${TABLE}.produto ;;
  }

  dimension: referencia_lead {
    type: string
    sql: ${TABLE}.referencia_lead ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: telefone_lead {
    type: string
    sql: ${TABLE}.telefone_lead ;;
  }

  dimension: ticketid {
    type: string
    sql: ${TABLE}.ticketid ;;
  }

  dimension: tipo_visita {
    type: string
    sql: ${TABLE}.tipo_visita ;;
  }

  dimension: utm_campanha_lead {
    type: string
    sql: ${TABLE}.utm_campanha_lead ;;
  }

  dimension: utm_conteudo_lead {
    type: string
    sql: ${TABLE}.utm_conteudo_lead ;;
  }

  dimension: utm_fonte_lead {
    type: string
    sql: ${TABLE}.utm_fonte_lead ;;
  }

  dimension: utm_midia_lead {
    type: string
    sql: ${TABLE}.utm_midia_lead ;;
  }

  dimension: utm_termo_lead {
    type: string
    sql: ${TABLE}.utm_termo_lead ;;
  }

  dimension: utm_volanty_lead {
    type: string
    sql: ${TABLE}.utm_volanty_lead ;;
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
