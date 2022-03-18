view: vendas {
  sql_table_name: `volanty-production.views.Vendas`
    ;;

  dimension: ano_modelo {
    type: string
    sql: ${TABLE}.ano_modelo ;;
  }

  dimension: banco {
    type: string
    sql: ${TABLE}.Banco ;;
  }

  dimension: reserva_paga {
    type: string
    sql: ${TABLE}.reserva_paga ;;
  }
  dimension: partner_cliente {
    type: string
    sql: ${TABLE}.partner_cliente ;;
  }

  dimension: origin_cliente {
    type: string
    sql: ${TABLE}.origin_cliente ;;
  }

  dimension: cav_venda {
    type: string
    sql: ${TABLE}.cav_venda ;;
  }

  dimension: cep_comprador {
    type: string
    sql: ${TABLE}.cep_comprador ;;
  }

  dimension: cidade_comprador {
    type: string
    sql: ${TABLE}.cidade_comprador ;;
  }

  dimension: consultor {
    type: string
    sql: ${TABLE}.consultor ;;
  }

  dimension: consultor_apoiador {
    type: string
    sql: ${TABLE}.consultor_apoiador ;;
  }

  dimension: cor {
    type: string
    sql: ${TABLE}.cor ;;
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

  dimension_group: data_entrega {
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
    sql: ${TABLE}.data_entrega ;;
  }

  dimension_group: data_vendido {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
      day_of_month
    ]
    sql: ${TABLE}.data_vendido ;;
  }

    dimension: MTD {
      type: yesno
      sql:  EXTRACT(DAY FROM  ${TABLE}.data_vendido) <= EXTRACT(DAY FROM CURRENT_DATE("America/Sao_Paulo"))
        ;;
    }

  dimension: delivery_date {
    type: string
    sql: ${TABLE}.delivery_date ;;
  }

  dimension: email_comprador {
    type: string
    sql: ${TABLE}.email_comprador ;;
  }

  dimension: financiamento_externo {
    type: yesno
    sql: ${TABLE}.Financiamento_externo ;;
  }

  dimension: financiamento_interno {
    type: yesno
    sql: ${TABLE}.Financiamento_interno ;;
  }

  dimension: veiculo_na_troca {
    type: yesno
    sql: ${TABLE}.Veiculo_troca ;;
  }


  dimension: id_venda {
    type: string
    sql: ${TABLE}.id_venda ;;
  }

  dimension: inspection_key {
    type: string
    sql: ${TABLE}.inspection_key ;;
  }

  dimension: inspectionkey {
    type: number
    sql: ${TABLE}.inspectionkey ;;
  }

  dimension: intervalo_anunciado_reservado {
    type: number
    sql: ${TABLE}.intervalo_anunciado_reservado ;;
  }

  dimension: km {
    type: number
    sql: ${TABLE}.km ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: meta_nome_campanha {
    type: string
    sql: ${TABLE}.meta_nome_campanha ;;
  }

  dimension: metas {
    type: number
    sql: ${TABLE}.metas ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: nome_comprador {
    type: string
    sql: ${TABLE}.nome_comprador ;;
  }

  dimension: origin {
    type: string
    sql: ${TABLE}.origin_cliente ;;
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

  dimension: produto_venda {
    type: string
    sql: ${TABLE}.produto_venda ;;
  }

  dimension: referencia_lead {
    type: string
    sql: ${TABLE}.referencia_lead ;;
  }

  dimension: responsavel_visita {
    type: string
    sql: ${TABLE}.responsavel_visita ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: tag {
    type: string
    sql: ${TABLE}.tag ;;
  }

  dimension: telefone_comprador {
    type: string
    sql: ${TABLE}.telefone_comprador ;;
  }

  dimension: tipo_delivery {
    type: string
    sql: ${TABLE}.tipo_delivery ;;
  }

  dimension: uf_comprador {
    type: string
    sql: ${TABLE}.uf_comprador ;;
  }

  dimension: uf_venda {
    type: string
    sql: ${TABLE}.UF_venda ;;
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

  dimension: vendedor {
    type: string
    sql: ${TABLE}.vendedor ;;
  }

  dimension: empresa {
    type: string
    sql: ${TABLE}.empresa ;;
  }

  dimension: versao {
    type: string
    sql: ${TABLE}.versao ;;
  }

  dimension: visitid {
    type: string
    sql: ${TABLE}.visitid ;;
  }

  dimension: lead_id {
    type: string
    sql: ${TABLE}.lead_id ;;
  }


  dimension: Valor_Financiamento_interno {
    type: number
    sql: ${TABLE}.Valor_Financiamento_interno ;;
  }

  dimension: Carteizado_PosVenda {
    type: string
    sql: ${TABLE}.carterizado_pos_venda ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
