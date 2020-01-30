view: funil_anuncio {
  sql_table_name: views.Funil_Anuncio ;;

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
  }

  dimension_group: data {
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
    sql: CAST(${TABLE}.data AS TIMESTAMP) ;;
  }

  dimension: estagio {
    type: string
    sql: ${TABLE}.estagio ;;
  }

  dimension: etapa {
    type: string
    sql: ${TABLE}.etapa ;;
  }

  dimension: express {
    type: yesno
    sql: ${TABLE}.express ;;
  }

  dimension: status_estoque {
    type: string
    sql: ${TABLE}.status_estoque ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
