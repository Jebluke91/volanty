view: web_motors {
  sql_table_name: `volanty-production.adhoc_views.Web_Motors`
    ;;

  dimension: ano_modelo {
    type: number
    sql: ${TABLE}.ano_modelo ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension_group: data_criacao {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.data_criacao ;;
  }

  dimension: dif_volanty {
    type: number
    sql: ${TABLE}.dif_volanty ;;
  }

  measure: dif_volanty_ {
    type: sum
    sql: ${TABLE}.dif_volanty ;;
  }

  dimension: id_webmotors {
    type: string
    sql: ${TABLE}.id_webmotors ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: preco_anuncio {
    type: number
    sql: ${TABLE}.preco_anuncio ;;
  }

  dimension: preco_qvmc {
    type: number
    sql: ${TABLE}.preco_QVMC ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: tempo_anuncio {
    type: number
    sql: ${TABLE}.tempo_anuncio ;;
  }

  measure: tempo_anuncio_ {
    type: sum
    sql: ${TABLE}.tempo_anuncio ;;
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
