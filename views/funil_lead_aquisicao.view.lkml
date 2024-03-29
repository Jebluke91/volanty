view: funil_lead_aquisicao {
  sql_table_name: views.Volanty_Funil_Compras ;;

  dimension_group: data {
    type: time
    timeframes: [
      raw,
      date,
      day_of_week,
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

  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }

  dimension: utm_source {
    type: string
    sql: ${TABLE}.utm_source ;;
  }

  dimension: faixa_km {
    type: string
    sql: ${TABLE}.faixa_km ;;
  }


  dimension: qtd {
    type: number
    sql: ${TABLE}.qtd ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
