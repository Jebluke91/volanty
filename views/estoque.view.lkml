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

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
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

  measure: dias_em_estoque {
    type: sum
    sql: ${TABLE}.Dias_Em_Estoque ;;
  }

  dimension: dias_em_estoque_ {
    type: number
    sql: ${TABLE}.Dias_Em_Estoque ;;
    drill_fields: [car_details*]
    html: {{ modelo._rendered_value }} - {{ placa._rendered_value }} {{ rendered_value }}   ;;  ## here we use || to concatenate the values

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

  dimension: dias_sem_visita_ {
    type: number
    sql: ${TABLE}.Dias_sem_Visita ;;
  }

  measure: dias_sem_visita {
    type: sum
    sql: ${TABLE}.Dias_sem_Visita ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
