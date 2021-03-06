view: report_comparador_pr {
  sql_table_name: `volanty-production.adhoc_views.Report_Comparador_PR`
    ;;

  dimension: ano_modelo {
    type: number
    sql: ${TABLE}.ano_modelo ;;
  }

  dimension: cor {
    type: string
    sql: ${TABLE}.cor ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }

  dimension: km {
    type: number
    sql: ${TABLE}.km ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: media_webmotors {
    type: number
    sql: ${TABLE}.Media_Webmotors ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: papito_prediction {
    type: number
    sql: ${TABLE}.Papito_prediction ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  dimension: preco_fipe {
    type: number
    sql: ${TABLE}.precoFipe ;;
  }

  dimension_group: primeiro_anuncio {
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
    sql: ${TABLE}.primeiro_anuncio ;;
  }

  dimension: primeiro_preco {
    type: number
    sql: ${TABLE}.primeiro_preco ;;
  }

  dimension: produto {
    type: string
    sql: ${TABLE}.produto ;;
  }

  dimension: transmissao {
    type: string
    sql: ${TABLE}.transmissao ;;
  }

  dimension_group: ultimo_anuncio {
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
    sql: ${TABLE}.ultimo_anuncio ;;
  }

  dimension: ultimo_preco {
    type: number
    sql: ${TABLE}.ultimo_preco ;;
  }

  dimension: versao {
    type: string
    sql: ${TABLE}.versao ;;
  }

  dimension: dias_anunciado {
    type: string
    sql: ${TABLE}.dias_anunciado ;;
  }


  measure: count {
    type: count
    drill_fields: []
  }

  measure: Volanty_mais_cara_que_Papito {
    sql: ${TABLE}.Volanty_mais_cara_que_Papito ;;
   type: sum
   drill_fields: [car_details*]
  }
  set: car_details {
    fields: [placa,marca,modelo,versao,ano_modelo,cor,transmissao,km,ultimo_preco,preco_fipe,papito_prediction,media_webmotors,dias_anunciado]
  }

  measure: Volanty_mais_cara_que_WebM {
    sql: ${TABLE}.Volanty_mais_cara_que_WebM ;;
   type: sum
    drill_fields: [car_details*]
  }


  measure: volanty_mais_cara_que_fipe {
  sql: ${TABLE}.volanty_mais_cara_que_fipe ;;
   type: sum
    drill_fields: [car_details*]
  }

  measure: Volanty_mais_barata_que_Papito {
    sql: ${TABLE}.Volanty_mais_barata_que_Papito ;;
    type: sum
    drill_fields: [car_details*]
  }
  measure: Volanty_mais_barata_que_WebM {
    sql: ${TABLE}.Volanty_mais_barata_que_WebM ;;
    type: sum
    drill_fields: [car_details*]
  }

  measure: volanty_mais_barata_que_fipe {
    sql: ${TABLE}.volanty_mais_barata_que_fipe ;;
    type: sum
    drill_fields: [car_details*]
  }


  measure: Preco_Medio_Volanty {
    sql: ${TABLE}.ultimo_preco ;;
    type: average
    value_format_name: reais
  }
  measure: Preco_Medio_Web_Motors {
    sql: ${TABLE}.media_webmotors ;;
    type: average
    value_format_name: reais
  }
  measure: Preco_Medio_FIPE {
    sql: ${TABLE}.precofipe ;;
    type: average
    value_format_name: reais
  }
  measure: Preco_Medio_Papito {
    sql: ${TABLE}.Papito_prediction ;;
    type: average
    value_format_name: reais
  }
}
