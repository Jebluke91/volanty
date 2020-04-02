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


  measure: count {
    type: count
    drill_fields: []
  }

  measure: Volanty_mais_cara_que_Papito {
    type: sum
    sql: ${TABLE}.${Volanty_mais_cara_que_Papito} ;;
  }

  measure: Volanty_mais_cara_que_WebM {
    type: sum
    sql: ${TABLE}.${Volanty_mais_cara_que_WebM} ;;
  }

  measure: volanty_mais_cara_que_fipe {
    type: sum
    sql: ${TABLE}.${volanty_mais_cara_que_fipe} ;;
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
