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
  dimension: valor_compra {
    type: number
    sql: ${TABLE}.valor_compra ;;
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

  dimension: meta_nome_campanha {
    type: string
    sql: ${TABLE}.meta_nome_campanha ;;
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
    type: number
    sql: ${TABLE}.preco_venda ;;
  }

  dimension: produto {
    type: string
    sql: ${TABLE}.produto ;;
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

  dimension: MTD {
    type: yesno
    sql:  EXTRACT(DAY FROM  ${TABLE}.data_vendido) <= EXTRACT(DAY FROM CURRENT_DATE("America/Sao_Paulo"))
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
