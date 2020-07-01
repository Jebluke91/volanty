view: vendas_oficial {
  sql_table_name: volanty-production.views.Vendas_Oficial ;;

  dimension: ano_modelo {
    type: number
    sql: ${TABLE}.ano_modelo ;;
  }

  dimension: carroceria {
    type: string
    sql: ${TABLE}.carroceria ;;
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





  dimension_group: data_retirado {
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
    sql: ${TABLE}.data_retirado ;;
  }

  dimension_group: data_vendido {
    type: time
    timeframes: [
      raw,
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

  dimension: desconto_aplicado {
    type: string
    sql: ${TABLE}.desconto_aplicado ;;
  }


  dimension: intervalo_agendado_vendido {
    type: number
    sql: ${TABLE}.intervalo_agendado_vendido ;;
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

  dimension: percentual_comissao {
    type: number
    sql: ${TABLE}.percentual_comissao ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  dimension: preco_anuncio {
    type: string
    sql: ${TABLE}.preco_anuncio ;;
  }


  dimension: preco_venda {
    type: string
    sql: ${TABLE}.preco_venda ;;
  }

  dimension: produto {
    type: string
    sql: ${TABLE}.produto ;;
  }

  dimension: saldo_proprietario {
    type: string
    sql: ${TABLE}.saldo_proprietario ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }



  dimension: transmissao {
    type: string
    sql: ${TABLE}.transmissao ;;
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

  dimension: vendedor {
    type: string
    sql: ${TABLE}.vendedor ;;
  }

  dimension: versao {
    type: string
    sql: ${TABLE}.versao ;;
  }

  dimension: MTD {
    type: yesno
    sql:  EXTRACT(DAY FROM  ${TABLE}.data_vendido) < EXTRACT(DAY FROM CURRENT_DATE("America/Sao_Paulo"))
;;
  }


  measure: count {
    type: count
    drill_fields: [car_details*]
  }
  set: car_details {
    fields: [marca,modelo,versao,cav_venda,ano_modelo,vendedor]
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
