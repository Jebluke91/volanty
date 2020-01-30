view: leads_compra {
  sql_table_name: views.Leads_Compra ;;

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
  }

  dimension: cav_visita {
    type: string
    sql: ${TABLE}.cav_visita ;;
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

  dimension_group: data_criacao_lead {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.data_criacao_lead ;;
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

  dimension_group: data_visita_agendada_para {
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
    sql: ${TABLE}.data_visita_agendada_para ;;
  }

  dimension_group: data_visita_criada {
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
    sql: ${TABLE}.data_visita_criada ;;
  }

  dimension_group: data_visita_executada {
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
    sql: ${TABLE}.data_visita_executada ;;
  }

  dimension: dia_da_semana {
    type: string
    sql: ${TABLE}.dia_da_semana ;;
  }

  dimension: email_comprador {
    type: string
    sql: ${TABLE}.email_comprador ;;
  }

  dimension: email_inspetor {
    type: string
    sql: ${TABLE}.email_inspetor ;;
  }

  dimension: email_lead {
    type: string
    sql: ${TABLE}.email_lead ;;
  }

  dimension: email_proprietario {
    type: string
    sql: ${TABLE}.email_proprietario ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
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

  dimension: nome_comprador {
    type: string
    sql: ${TABLE}.nome_comprador ;;
  }

  dimension: nome_inspetor_visita {
    type: string
    sql: ${TABLE}.nome_inspetor_visita ;;
  }

  dimension: nome_proprietario {
    type: string
    sql: ${TABLE}.nome_proprietario ;;
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

  dimension: referencia_lead {
    type: string
    sql: ${TABLE}.referencia_lead ;;
  }

  dimension: responsavel_venda {
    type: string
    sql: ${TABLE}.responsavel_venda ;;
  }

  dimension: selecionado {
    type: yesno
    sql: ${TABLE}.selecionado ;;
  }

  dimension: status_agendamento {
    type: string
    sql: ${TABLE}.status_agendamento ;;
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

  dimension: status_visita {
    type: string
    sql: ${TABLE}.status_visita ;;
  }

  dimension: telefone_comprador {
    type: string
    sql: ${TABLE}.telefone_comprador ;;
  }

  dimension: telefone_lead {
    type: string
    sql: ${TABLE}.telefone_lead ;;
  }

  dimension: telefone_proprietario {
    type: string
    sql: ${TABLE}.telefone_proprietario ;;
  }

  dimension_group: update {
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
    sql: ${TABLE}.update_date ;;
  }

  dimension: url_do_admin {
    type: string
    sql: ${TABLE}.url_do_admin ;;
  }

  dimension: url_do_carro {
    type: string
    sql: ${TABLE}.url_do_carro ;;
  }

  dimension: usuario_volanty {
    type: string
    sql: ${TABLE}.usuario_volanty ;;
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

  dimension: versao_carro {
    type: string
    sql: ${TABLE}.versao_carro ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
