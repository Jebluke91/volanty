view: creditas_vendas {
  sql_table_name: `volanty-production.views.Creditas_Vendas`
    ;;

  dimension: ano_modelo {
    type: number
    sql: ${TABLE}.ano_modelo ;;
  }

  dimension: carroceria {
    type: string
    sql: ${TABLE}.carroceria ;;
  }


  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
  }

  dimension: uf_venda {
    type: string
    sql: ${TABLE}.uf_venda ;;
  }

  dimension: cep_comprador {
    type: string
    sql: ${TABLE}.cep_comprador ;;
  }

  dimension: uf_comprador {
    type: string
    sql: ${TABLE}.uf_comprador ;;
  }

  dimension: cidade_comprador {
    type: string
    sql: ${TABLE}.cidade_comprador ;;
  }

  dimension: cor {
    type: string
    sql: ${TABLE}.cor ;;
  }
  dimension: origem {
    type: string
    sql: ${TABLE}.origem ;;
  }

  dimension: fornecedor {
    type: string
    sql: ${TABLE}.fornecedor ;;
  }
  dimension: valor_compra {
    type: number
    sql: ${TABLE}.valor_compra ;;
  }



  dimension_group: data_anunciado {
    type: time
    timeframes: [
      day_of_month,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.data_anunciado ;;
  }


  dimension_group: data_vendido {
    type: time
    timeframes: [
      day_of_month,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql:  ${TABLE}.data_vendido
      ;;
  }
  dimension_group: Data_ativacao_garantia {
    type: time
    timeframes: [
      day_of_month,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql:  ${TABLE}.Data_ativacao_garantia
      ;;
  }



  dimension: intervalo_anunciado_reservado {
    type: number
    sql: ${TABLE}.intervalo_anunciado_reservado ;;
  }

  dimension: intervalo_anunciado_vendido {
    type: number
    sql: ${TABLE}.intervalo_anunciado_vendido ;;
  }


  dimension: intervalo_reservado_vendido {
    type: number
    sql: ${TABLE}.intervalo_reservado_vendido ;;
  }

  dimension: km {
    type: number
    sql: ${TABLE}.km ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }



  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: referencia_lead {
    type: string
    sql: ${TABLE}.referencia_lead ;;
  }

  dimension: Garantia_Premium {
    type: string
    sql: ${TABLE}.Garantia_Premium ;;
  }


  dimension: Garantia_Premium_Preco {
    type: number
    sql: ${TABLE}.Garantia_Premium_Preco ;;
  }


  dimension: lavagem {
    type: number
    sql: ${TABLE}.Lavagem ;;
  }

  dimension: lavagem_preco {
    type: number
    sql: ${TABLE}.Lavagem_preco ;;
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
  dimension: visitid {
    type: string
    sql: ${TABLE}.visitid ;;
  }


  dimension: tipo_entrega {
    type: string
    sql: ${TABLE}.tipo_entrega ;;
  }


  dimension: produto_venda {
    type: string
    sql: ${TABLE}.produto_venda ;;
  }


  dimension: consultor_apoiador {
    type: string
    sql: ${TABLE}.consultor_apoiador ;;
  }

  dimension: cav_venda {
    type: string
    sql: ${TABLE}.cav_venda ;;
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

  dimension: produto {
    type: string
    sql: ${TABLE}.produto ;;
  }

  dimension: tag {
    type: string
    sql: ${TABLE}.tag ;;
  }



  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }



  dimension: transmissao {
    type: string
    sql: ${TABLE}.transmissao ;;
  }


  dimension: vendedor {
    type: string
    sql: ${TABLE}.vendedor ;;
  }

  dimension: versao {
    type: string
    sql: ${TABLE}.versao ;;
  }

  dimension: Financiamento{
    type: yesno
    sql: ${TABLE}.Financiamento_interno ;;
  }

  dimension: Financiamento_externo {
    type: yesno
    sql: ${TABLE}.Financiamento_externo ;;
  }

  dimension: reserva_paga {
    type: string
    sql: ${TABLE}.reserva_paga ;;
  }

  dimension: Banco {
    type: string
    sql: ${TABLE}.Banco ;;
  }

  dimension: MTD {
    type: yesno
    sql:  EXTRACT(DAY FROM  ${TABLE}.data_vendido) <= EXTRACT(DAY FROM CURRENT_DATE("America/Sao_Paulo"))
      ;;
  }
  dimension_group: data_entrega {
    type: time
    timeframes: [
      day_of_month,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql:  ${TABLE}.data_entrega
      ;;
  }


  measure: count {
    type: count
    drill_fields: [car_details*]
  }
  set: car_details {
    fields: [marca,placa,modelo,versao,cav,ano_modelo,vendedor]
  }

  measure: preco_soma {
    sql: ${preco_venda} ;;
    type: sum
    value_format_name: reais
  }
  measure: preco_medio {
    sql: ${preco_venda} ;;
    type: average
    value_format_name: reais
  }
}
