view: creditas_avaliacao {
  sql_table_name: `volanty-production.views.Creditas_Avaliacao`
    ;;

  dimension: ano_modelo {
    type: string
    sql: ${TABLE}.ano_modelo ;;
  }

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
  }

  dimension_group: data_anunciado {
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
    sql: ${TABLE}.data_anunciado ;;
  }

  dimension_group: data_criacao_avaliacao {
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
    sql: ${TABLE}.data_criacao_avaliacao ;;
  }

  dimension: deal_board_value {
    type: string
    sql: ${TABLE}.deal_board_value ;;
  }

  dimension: deal_date {
    type: string
    sql: ${TABLE}.deal_date ;;
  }

  dimension: deal_description {
    type: string
    sql: ${TABLE}.deal_description ;;
  }

  dimension: deal_extra_expected_value {
    type: number
    sql: ${TABLE}.deal_extra_expectedValue ;;
  }

  dimension: deal_reason {
    type: string
    sql: ${TABLE}.deal_reason ;;
  }

  dimension: deal_repair_value {
    type: number
    sql: ${TABLE}.deal_repair_value ;;
  }

  dimension: deal_status {
    type: string
    sql: ${TABLE}.deal_status ;;
  }

  dimension: deal_type {
    type: string
    sql: ${TABLE}.deal_type ;;
  }

  dimension: deal_value {
    type: number
    sql: ${TABLE}.deal_value ;;
  }

  dimension: descricao_cancelamento {
    type: string
    sql: ${TABLE}.descricao_cancelamento ;;
  }

  dimension: email_proprietario {
    type: string
    sql: ${TABLE}.email_proprietario ;;
  }

  dimension: fipe {
    type: number
    sql: ${TABLE}.fipe ;;
  }

  dimension: km {
    type: string
    sql: ${TABLE}.km ;;
  }

  dimension: lead_id {
    type: string
    sql: ${TABLE}.lead_id ;;
  }

  dimension: lead_preferred {
    type: string
    sql: ${TABLE}.lead_preferred ;;
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
    type: string
    sql: ${TABLE}.maximo_preco_consignado ;;
  }

  dimension: media_ga_client_id {
    type: string
    sql: ${TABLE}.media_gaClientId ;;
  }

  dimension: media_origin {
    type: string
    sql: ${TABLE}.media_origin ;;
  }

  dimension: media_pricefeedback {
    type: string
    sql: ${TABLE}.media_pricefeedback ;;
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

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: modelo_escolhido {
    type: string
    sql: ${TABLE}.modelo_escolhido ;;
  }

  dimension: motivo_cancelamento {
    type: string
    sql: ${TABLE}.motivo_cancelamento ;;
  }

  dimension: nome_proprietario {
    type: string
    sql: ${TABLE}.nome_proprietario ;;
  }

  dimension: numero_debitos {
    type: string
    sql: ${TABLE}.numero_debitos ;;
  }

  dimension: partner {
    type: string
    sql: ${TABLE}.partner ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  dimension: preco_webmotors {
    type: number
    sql: ${TABLE}.preco_webmotors ;;
  }

  dimension: proposta {
    type: number
    sql: ${TABLE}.proposta ;;
  }

  dimension: proposta_bonus_descricao {
    type: string
    sql: ${TABLE}.proposta_bonus_descricao ;;
  }

  dimension: proposta_bonus_preco {
    type: string
    sql: ${TABLE}.proposta_bonus_preco ;;
  }

  dimension: proposta_bonus_tipo {
    type: string
    sql: ${TABLE}.proposta_bonus_tipo ;;
  }

  dimension: proposta_bonus_tipodescricao {
    type: string
    sql: ${TABLE}.proposta_bonus_tipodescricao ;;
  }

  dimension: proposta_observacao {
    type: string
    sql: ${TABLE}.proposta_observacao ;;
  }

  dimension: proposta_penalty_descricao {
    type: string
    sql: ${TABLE}.proposta_penalty_descricao ;;
  }

  dimension: proposta_penalty_preco {
    type: string
    sql: ${TABLE}.proposta_penalty_preco ;;
  }

  dimension: proposta_penalty_tipo {
    type: string
    sql: ${TABLE}.proposta_penalty_tipo ;;
  }

  dimension: proposta_penalty_tipodescricao {
    type: string
    sql: ${TABLE}.proposta_penalty_tipodescricao ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: status_proposta {
    type: string
    sql: ${TABLE}.status_proposta ;;
  }

  dimension: telefone_proprietario {
    type: string
    sql: ${TABLE}.telefone_proprietario ;;
  }

  dimension: tipo_proposta {
    type: string
    sql: ${TABLE}.tipo_proposta ;;
  }

  dimension: uf {
    type: string
    sql: ${TABLE}.uf ;;
  }

  dimension: ultima_atualizacao {
    type: string
    sql: ${TABLE}.ultima_atualizacao ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}.user ;;
  }

  dimension: usuario {
    type: string
    sql: ${TABLE}.usuario ;;
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
