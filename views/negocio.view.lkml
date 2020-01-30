view: negocio {
  sql_table_name: views.Negocio ;;

  dimension: carro {
    type: string
    sql: ${TABLE}.carro ;;
  }

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

  dimension_group: data_criacao_negocio {
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
    sql: ${TABLE}.data_criacao_negocio ;;
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

  dimension: email_negocio {
    type: string
    sql: ${TABLE}.email_negocio ;;
  }

  dimension: exigencia_inspecao {
    hidden: yes
    sql: ${TABLE}.exigencia_inspecao ;;
  }

  dimension: express {
    type: yesno
    sql: ${TABLE}.express ;;
  }

  dimension_group: hdata_atualizacao_preco {
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
    sql: ${TABLE}.hdata_atualizacao_preco ;;
  }

  dimension_group: hdata_inicio_estoque_preco {
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
    sql: ${TABLE}.hdata_inicio_estoque_preco ;;
  }

  dimension: hora_inspecao_marcada_para {
    type: number
    sql: ${TABLE}.hora_inspecao_marcada_para ;;
  }

  dimension: hpreco_anuncio {
    type: number
    sql: ${TABLE}.hpreco_anuncio ;;
  }

  dimension: hpreco_venda {
    type: number
    sql: ${TABLE}.hpreco_venda ;;
  }

  dimension: husuario_alteracao_preco {
    type: string
    sql: ${TABLE}.husuario_alteracao_preco ;;
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

  dimension: mensagem {
    type: string
    sql: ${TABLE}.mensagem ;;
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

  dimension: referencia_negocio {
    type: string
    sql: ${TABLE}.referencia_negocio ;;
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

  dimension: telefone_negocio {
    type: string
    sql: ${TABLE}.telefone_negocio ;;
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

  dimension: utm_campanha_negocio {
    type: string
    sql: ${TABLE}.utm_campanha_negocio ;;
  }

  dimension: utm_content {
    type: string
    sql: ${TABLE}.utmContent ;;
  }

  dimension: utm_conteudo_negocio {
    type: string
    sql: ${TABLE}.utm_conteudo_negocio ;;
  }

  dimension: utm_fonte_negocio {
    type: string
    sql: ${TABLE}.utm_fonte_negocio ;;
  }

  dimension: utm_medium {
    type: string
    sql: ${TABLE}.utmMedium ;;
  }

  dimension: utm_midia_negocio {
    type: string
    sql: ${TABLE}.utm_midia_negocio ;;
  }

  dimension: utm_source {
    type: string
    sql: ${TABLE}.utmSource ;;
  }

  dimension: utm_term {
    type: string
    sql: ${TABLE}.utmTerm ;;
  }

  dimension: utm_termo_negocio {
    type: string
    sql: ${TABLE}.utm_termo_negocio ;;
  }

  dimension: utm_volanty_negocio {
    type: string
    sql: ${TABLE}.utm_volanty_negocio ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: negocio__tags {
  dimension: entry {
    type: string
    sql: ${TABLE}.entry ;;
  }
}

view: negocio__exigencia_inspecao {
  dimension: entry {
    type: string
    sql: ${TABLE}.entry ;;
  }
}
