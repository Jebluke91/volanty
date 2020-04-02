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

  dimension: volanty_mais_cara_que_fipe {
    type: number
    sql: ${TABLE}.Volanty_mais_cara_que_Fipe ;;
  }

  dimension: volanty_mais_cara_que_web_m {
    type: number
    sql: ${TABLE}.Volanty_mais_cara_que_WebM ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: Preco_Medio_Volanty {
    type: average
   sql: ${TABLE}.${ultimo_preco} ;;
    drill_fields: []
  }
  measure: Preco_Medio_Web_Motors {
    type: average
    sql: ${TABLE}.${media_webmotors} ;;
    drill_fields: []
  }
  measure: Preco_Medio_FIPE {
    type: average
    sql: ${TABLE}.${preco_fipe} ;;
    drill_fields: []
  }
}