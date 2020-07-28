view: estoque {
  sql_table_name: `volanty-production.views.Estoque`
    ;;

  dimension: ano_modelo {
    type: string
    sql: ${TABLE}.ano_modelo ;;
  }

  dimension: carroceria {
    type: string
    sql: ${TABLE}.carroceria ;;
  }

  dimension: origem {
    type: string
    sql: ${TABLE}.origem ;;
  }

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
  }

  dimension: fipe {
    type: number
    sql: ${TABLE}.fipe ;;
  }

  dimension: webmotors_average {
    type: number
    sql: ${TABLE}.webmotors_average ;;
  }

  dimension: Media_Venda {
    type: number
    sql: ${TABLE}.Media_Venda ;;
  }

  dimension: cor {
    type: string
    sql: ${TABLE}.cor ;;
  }

  dimension: categoria {
    type: string
    sql: ${TABLE}.categoria ;;
  }

  dimension: critico_dias_em_estoque {
    type: string
    sql: ${TABLE}.critico_dias_em_estoque ;;
  }

  dimension: critico_lead_por_dias {
    type: string
    sql: ${TABLE}.critico_lead_por_dias ;;
  }


  dimension: compra {
    type: number
    sql: ${TABLE}.compra ;;
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

  measure: dias_em_estoque {
    type: sum
    sql: ${TABLE}.Dias_Em_Estoque ;;
  }

  dimension: dias_em_estoque_ {
    type: number
    sql: ${TABLE}.Dias_Em_Estoque ;;
    drill_fields: [car_details*]
    html:{{ rendered_value }} <br>
    {{ modelo._rendered_value }} - {{ placa._rendered_value }} <br>
    {{ link_anuncio._rendered_value }} ;;  ## here we use || to concatenate the values

  }
  set: car_details {
    fields: [placa,marca,modelo,versao,preco_por,produto,qtd_lead,qtd_visita,dias_em_estoque,dias_sem_lead,dias_sem_visita]
  }


  dimension: dias_sem_lead_ {
    type: number
    sql: ${TABLE}.Dias_sem_Lead ;;
  }


  measure: dias_sem_lead {
    type: sum
    sql: ${TABLE}.Dias_sem_Lead ;;
  }

  measure: Media_WebMotors_ {
    type: sum
    sql: ${TABLE}.Media_WebMotors ;;
  }

  dimension: Media_WebMotors {
    type: number
    sql: ${TABLE}.Media_WebMotors ;;
  }




  dimension: dias_sem_visita_ {
    type: number
    sql: ${TABLE}.Dias_sem_Visita ;;
  }

  measure: dias_sem_visita {
    type: sum
    sql: ${TABLE}.Dias_sem_Visita ;;
  }

  dimension: UF {
    type: string
    sql: ${TABLE}.UF ;;
  }

  dimension: inspection_key {
    type: number
    sql: ${TABLE}.inspectionKey ;;
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

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  measure: preco_por {
    type: sum
    sql: ${TABLE}.preco_por ;;
  }

  dimension: preco_por_ {
    type: number
    sql: ${TABLE}.preco_por ;;
  }

  dimension: produto {
    type: string
    sql: ${TABLE}.produto ;;
  }

  measure: qtd_lead {
    type: sum
    sql: ${TABLE}.qtd_lead ;;
  }

  dimension: qtd_lead_{
    type: number
    sql: ${TABLE}.qtd_lead ;;
    drill_fields: [car_details*]
  }



  dimension: qtd_visita_ {
    type: number
    sql: ${TABLE}.qtd_visita ;;
  }

  measure: qtd_visita {
    type: sum
    sql: ${TABLE}.qtd_visita ;;
  }

  dimension: transmissao {
    type: string
    sql: ${TABLE}.transmissao ;;
  }

  dimension: versao {
    type: string
    sql: ${TABLE}.versao ;;
  }

  dimension: link_anuncio {
    type: string
    sql: ${TABLE}.versao ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
