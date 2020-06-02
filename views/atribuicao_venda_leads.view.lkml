view: atribuicao_venda_leads {
  sql_table_name: `volanty-production.views.Atribuicao_Venda_Leads`
    ;;

  dimension: ano_modelo {
    type: string
    sql: ${TABLE}.ano_modelo ;;
  }

  dimension: cav_venda {
    type: string
    sql: ${TABLE}.cav_venda ;;
  }

  dimension: cav_visita {
    type: string
    sql: ${TABLE}.cav_visita ;;
  }

  dimension: cep_comprador {
    type: string
    sql: ${TABLE}.cep_comprador ;;
  }

  dimension: cidade_comprador {
    type: string
    sql: ${TABLE}.cidade_comprador ;;
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

  dimension_group: data_reserva {
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
    sql: CAST(${TABLE}.data_reserva AS TIMESTAMP) ;;
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

  dimension: desconto_aplicado {
    type: number
    sql: ${TABLE}.desconto_aplicado ;;
  }

  dimension: email_lead {
    type: string
    sql: ${TABLE}.email_lead ;;
  }

  dimension: entregue_ao_comprador {
    type: yesno
    sql: ${TABLE}.entregue_ao_comprador ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }

  dimension: id_pedido {
    type: number
    sql: ${TABLE}.id_pedido ;;
  }

  dimension: id_pedido_inspecao {
    type: number
    sql: ${TABLE}.id_pedido_inspecao ;;
  }

  dimension: inspectionkey {
    type: number
    sql: ${TABLE}.inspectionkey ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
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
    type: yesno
    sql: ${TABLE}.meta_prometed ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: nome_inspetor_visita {
    type: string
    sql: ${TABLE}.nome_inspetor_visita ;;
  }

  dimension: percentual_comissao {
    type: number
    sql: ${TABLE}.percentual_comissao ;;
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

  dimension: saldo_proprietario {
    type: number
    sql: ${TABLE}.saldo_proprietario ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: status_pedido {
    type: string
    sql: ${TABLE}.status_pedido ;;
  }

  dimension: status_visita {
    type: string
    sql: ${TABLE}.status_visita ;;
  }

  dimension: telefone_lead {
    type: string
    sql: ${TABLE}.telefone_lead ;;
  }

  dimension: tipo_express {
    type: yesno
    sql: ${TABLE}.tipo_express ;;
  }

  dimension: tipo_match {
    type: string
    sql: ${TABLE}.tipo_match ;;
  }

  dimension: uf {
    type: string
    sql: ${TABLE}.uf ;;
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
    sql: CAST(${TABLE}.ultima_atualizacao AS TIMESTAMP) ;;
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

  dimension: venda_preco_anuncio {
    type: number
    sql: ${TABLE}.venda_preco_anuncio ;;
  }

  dimension: venda_preco_de_venda {
    type: number
    sql: ${TABLE}.venda_preco_de_venda ;;
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
