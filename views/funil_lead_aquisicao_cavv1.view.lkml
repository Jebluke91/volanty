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

  measure: count {
    type: count
    drill_fields: []
  }
}
