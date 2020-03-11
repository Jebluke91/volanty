view: funil_lead_aquisicao {
  sql_table_name: views.Funil_Lead_Aquisicao ;;

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

  measure: count {
    type: count
    drill_fields: []
  }
}