view: leads_com_checkin {
  sql_table_name: views.Leads_com_checkin ;;

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
  }

  dimension_group: data_criacao_negocio {
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
    sql: ${TABLE}.data_criacao_negocio ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: marca_carro {
    type: string
    sql: ${TABLE}.marca_carro ;;
  }

  dimension: modelo_carro {
    type: string
    sql: ${TABLE}.modelo_carro ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  dimension: status_checkin {
    type: string
    sql: ${TABLE}.status_checkin ;;
  }

  dimension: telefone {
    type: string
    sql: ${TABLE}.telefone ;;
  }

  dimension: url_do_admin {
    type: string
    sql: ${TABLE}.url_do_admin ;;
  }

  dimension: url_do_carro {
    type: string
    sql: ${TABLE}.url_do_carro ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
