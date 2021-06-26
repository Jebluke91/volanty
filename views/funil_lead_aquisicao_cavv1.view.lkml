view: funil_lead_aquisicao_cavv1 {
  sql_table_name: `volanty-production.raw_views.Funil_Lead_Aquisicao_Cavv1`
    ;;

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
  }

  dimension_group: data {
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
    sql: ${TABLE}.data ;;
  }

  dimension: estagio {
    type: string
    sql: ${TABLE}.estagio ;;
  }

  dimension: etapa {
    type: string
    sql: ${TABLE}.etapa ;;
  }

  dimension: uf {
    type: string
    sql: ${TABLE}.uf ;;
    }

    dimension: media_origin {
    type: string
    sql: ${TABLE}.media_origin ;;
  }

  dimension: modelo_escolhido {
    type: string
    sql: ${TABLE}.modelo_escolhido ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: media_priceAcceptable {
    type: yesno
    sql: ${TABLE}.media_priceAcceptable ;;
  }



  measure: count {
    type: count
    drill_fields: []
  }
}
