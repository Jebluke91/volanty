view: avaliacao {
  sql_table_name: `volanty-production.views.Avaliacao`
    ;;

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
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
    type: number
    sql: ${TABLE}.deal_board_value ;;
  }

  dimension_group: deal {
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
    sql: ${TABLE}.deal_date ;;
  }

  dimension: deal_repair_value {
    type: number
    sql: ${TABLE}.deal_repair_value ;;
  }

  dimension: deal_status {
    type: string
    sql: ${TABLE}.deal_status ;;
  }

  dimension: deal_value {
    type: number
    sql: ${TABLE}.deal_value ;;
  }

  dimension: email_proprietario {
    type: string
    sql: ${TABLE}.email_proprietario ;;
  }

  dimension: modelo_escolhido {
    type: string
    sql: ${TABLE}.modelo_escolhido ;;
  }

  dimension: nome_proprietario {
    type: string
    sql: ${TABLE}.nome_proprietario ;;
  }

  dimension: numero_debitos {
    type: number
    sql: ${TABLE}.numero_debitos ;;
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

  dimension_group: ultima_atualizacao {
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
    sql: ${TABLE}.ultima_atualizacao ;;
  }

  dimension: usuario {
    type: string
    sql: ${TABLE}.usuario ;;
  }


  dimension: fipe {
    type: number
    sql: ${TABLE}.fipe ;;
  }


  dimension: modelo {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: versao {
    type: string
    sql: ${TABLE}.version ;;
  }

  dimension: ano_modelo {
    type: string
    sql: ${TABLE}.ano_modelo ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  dimension: webmotors {
    type: number
    sql: ${TABLE}.preco_webmotors ;;
  }



  measure: count {
    type: count
    drill_fields: []
  }
}