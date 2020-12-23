view: vendas_canceladas {
  sql_table_name: volanty-production.views.Vendas_Canceladas ;;

  dimension: inspection_key {
    type: string
    sql: ${TABLE}.inspection_key ;;
  }

  dimension: vendedor {
    type: string
    sql: ${TABLE}.vendedor ;;
  }
  dimension: uf_comprador {
    type: string
    sql: ${TABLE}.uf_comprador ;;
  }
  dimension: cidade_comprador {
    type: string
    sql: ${TABLE}.cidade_comprador ;;
  }
  dimension: cep_comprador {
    type: string
    sql: ${TABLE}.cep_comprador ;;
  }
  dimension: email_comprador {
    type: string
    sql: ${TABLE}.email_comprador ;;
  }
  dimension: telefone_comprador {
    type: string
    sql: ${TABLE}.telefone_comprador ;;
  }
  dimension: cav_venda {
    type: string
    sql: ${TABLE}.cav_venda ;;
  }
  dimension: UF_venda {
    type: string
    sql: ${TABLE}.UF_venda ;;
  }
  dimension: preco_venda {
    type: number
    sql: ${TABLE}.preco_venda ;;
  }
  dimension: preco_anuncio {
    type: string
    sql: ${TABLE}.preco_anuncio ;;
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
  dimension_group: data_vendido {
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
    sql: ${TABLE}.data_vendido ;;
  }
  dimension: intervalo_anunciado_reservado {
    type: number
    sql: ${TABLE}.intervalo_anunciado_reservado ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: reasonDescription {
    type: string
    sql: ${TABLE}.reasonDescription ;;
  }
  dimension: produto {
    type: string
    sql: ${TABLE}.produto ;;
  }
  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }
  dimension: ano_modelo {
    type: string
    sql: ${TABLE}.ano_modelo ;;
  }
  dimension: cor {
    type: string
    sql: ${TABLE}.cor ;;
  }
  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }
  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }
  dimension: versao {
    type: string
    sql: ${TABLE}.versao ;;
  }
  dimension: km {
    type:number

    sql: ${TABLE}.km ;;
  }
  dimension: transmissao {
    type: string
    sql: ${TABLE}.transmissao ;;
  }
  dimension: carroceria {
    type: string
    sql: ${TABLE}.carroceria ;;
  }
  dimension: tag_black_friday {
    type: string
    sql: ${TABLE}.tag_black_friday ;;
  }
  dimension: valor_compra {
    type: number
    sql: ${TABLE}.valor_compra ;;
  }
  dimension: origem {
    type: string
    sql: ${TABLE}.origem ;;
  }
  dimension: fornecedor {
    type: string
    sql: ${TABLE}.fornecedor ;;
  }
  dimension: visitid {
    type: string
    sql: ${TABLE}.visitid ;;
  }
  dimension: referencia_lead {
    type: string
    sql: ${TABLE}.referencia_lead ;;
  }
  dimension: meta_nome_campanha {
    type: string
    sql: ${TABLE}.meta_nome_campanha ;;
  }
  dimension: referencia_cliente_telefone {
    type: string
    sql: ${TABLE}.referencia_cliente_telefone ;;
  }
  dimension: utm_fonte_lead {
    type: string
    sql: ${TABLE}.utm_fonte_lead ;;
  }
  dimension: utm_campanha_lead {
    type: string
    sql: ${TABLE}.utm_campanha_lead ;;
  }
  dimension: utm_volanty_lead {
    type: string
    sql: ${TABLE}.utm_volanty_lead ;;
  }
  dimension: utm_midia_lead {
    type: string
    sql: ${TABLE}.utm_midia_lead ;;
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

  measure: count {
    type: count
    drill_fields: []
  }





  }
