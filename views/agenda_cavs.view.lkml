view: agenda_cavs {
  sql_table_name: `volanty-production.adhoc_views.Agenda_cav`
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

  dimension: dia_semana {
    type: string
    sql: ${TABLE}.dia_semana ;;
  }

  dimension: hora {
    type: number
    sql: ${TABLE}.hora ;;
  }

  dimension: qtd_agendamentos {
    type: number
    sql: ${TABLE}.qtd_agendamentos ;;
  }

  dimension: slots {
    type: number
    sql: ${TABLE}.SLOTS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
