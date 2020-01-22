view: agendamentos_inspecoes {
  sql_table_name: views.Agendamentos_Inspecoes ;;

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
  }

  dimension: checkin {
    type: yesno
    sql: ${TABLE}.checkin ;;
  }

  dimension_group: data_agendamento_criado {
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
    sql: CAST(${TABLE}.data_agendamento_criado AS TIMESTAMP) ;;
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
    sql: CAST(${TABLE}.data_anunciado AS TIMESTAMP) ;;
  }

  dimension_group: data_atualizacao_preco {
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
    sql: ${TABLE}.data_atualizacao_preco ;;
  }

  dimension_group: data_inicio_estoque_preco {
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
    sql: ${TABLE}.data_inicio_estoque_preco ;;
  }

  dimension_group: data_inspecao {
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
    sql: CAST(${TABLE}.data_inspecao AS TIMESTAMP) ;;
  }

  dimension_group: data_inspecao_agendada_para {
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
    sql: CAST(${TABLE}.data_inspecao_agendada_para AS TIMESTAMP) ;;
  }

  dimension: demand {
    type: string
    sql: ${TABLE}.demand ;;
  }

  dimension: dia_da_semana {
    type: string
    sql: ${TABLE}.dia_da_semana ;;
  }

  dimension: email_cliente {
    type: string
    sql: ${TABLE}.email_cliente ;;
  }

  dimension: email_inspetor {
    type: string
    sql: ${TABLE}.email_inspetor ;;
  }

  dimension: exigencia_inspecao {
    hidden: yes
    sql: ${TABLE}.exigencia_inspecao ;;
  }

  dimension: express {
    type: yesno
    sql: ${TABLE}.express ;;
  }

  dimension: hora_inspecao_marcada_para {
    type: number
    sql: ${TABLE}.hora_inspecao_marcada_para ;;
  }

  dimension: id_inspecao {
    type: number
    sql: ${TABLE}.id_inspecao ;;
  }

  dimension: km {
    type: number
    sql: ${TABLE}.km ;;
  }

  dimension: marca_carro {
    type: string
    sql: ${TABLE}.marca_carro ;;
  }

  dimension: modelo_carro {
    type: string
    sql: ${TABLE}.modelo_carro ;;
  }

  dimension: nome_cliente {
    type: string
    sql: ${TABLE}.nome_cliente ;;
  }

  dimension: observacoes {
    type: string
    sql: ${TABLE}.observacoes ;;
  }

  dimension: observacoes_exigencia_inspecao {
    type: string
    sql: ${TABLE}.observacoes_exigencia_inspecao ;;
  }

  dimension: observacoes_negativado_inspecao {
    type: string
    sql: ${TABLE}.observacoes_negativado_inspecao ;;
  }

  dimension: origem_agendamento {
    type: string
    sql: ${TABLE}.origem_agendamento ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  dimension: preco_anuncio {
    type: number
    sql: ${TABLE}.preco_anuncio ;;
  }

  dimension: preco_venda {
    type: number
    sql: ${TABLE}.preco_venda ;;
  }

  dimension: responsavel_venda {
    type: string
    sql: ${TABLE}.responsavel_venda ;;
  }

  dimension: status_agendamento {
    type: string
    sql: ${TABLE}.status_agendamento ;;
  }

  dimension: status_agendor {
    type: string
    sql: ${TABLE}.status_agendor ;;
  }

  dimension: status_estoque {
    type: string
    sql: ${TABLE}.status_estoque ;;
  }

  dimension: status_inspecao {
    type: string
    sql: ${TABLE}.status_inspecao ;;
  }

  dimension: status_inspecao_realizada {
    type: string
    sql: ${TABLE}.status_inspecao_realizada ;;
  }

  dimension: status_processamento_inspecao {
    type: number
    sql: ${TABLE}.status_processamento_inspecao ;;
  }

  dimension: tags {
    hidden: yes
    sql: ${TABLE}.tags ;;
  }

  dimension: telefone_cliente {
    type: string
    sql: ${TABLE}.telefone_cliente ;;
  }

  dimension_group: ultima_atualizacao_inspecao {
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
    sql: ${TABLE}.ultima_atualizacao_inspecao ;;
  }

  dimension: url_do_admin {
    type: string
    sql: ${TABLE}.url_do_admin ;;
  }

  dimension: url_do_carro {
    type: string
    sql: ${TABLE}.url_do_carro ;;
  }

  dimension: usuario_alteracao_preco {
    type: string
    sql: ${TABLE}.usuario_alteracao_preco ;;
  }

  dimension: usuario_volanty {
    type: string
    sql: ${TABLE}.usuario_volanty ;;
  }

  dimension: utm_campaign {
    type: string
    sql: ${TABLE}.utmCampaign ;;
  }

  dimension: utm_content {
    type: string
    sql: ${TABLE}.utmContent ;;
  }

  dimension: utm_medium {
    type: string
    sql: ${TABLE}.utmMedium ;;
  }

  dimension: utm_source {
    type: string
    sql: ${TABLE}.utmSource ;;
  }

  dimension: utm_term {
    type: string
    sql: ${TABLE}.utmTerm ;;
  }

  dimension: versao_carro {
    type: string
    sql: ${TABLE}.versao_carro ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: agendamentos_inspecoes__tags {
  dimension: entry {
    type: string
    sql: ${TABLE}.entry ;;
  }
}

view: agendamentos_inspecoes__exigencia_inspecao {
  dimension: entry {
    type: string
    sql: ${TABLE}.entry ;;
  }
}
