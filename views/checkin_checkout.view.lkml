view: checkin_checkout {
  sql_table_name: views.Checkin_Checkout ;;

  dimension: carro_no_cav {
    type: yesno
    sql: ${TABLE}.carro_no_cav ;;
  }

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
  }

  dimension_group: data_atualizacao_checkin {
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
    sql: ${TABLE}.data_atualizacao_checkin ;;
  }

  dimension_group: data_checkin_realizado {
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
    sql: ${TABLE}.data_checkin_realizado ;;
  }

  dimension_group: data_marcada_para_checkout {
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
    sql: ${TABLE}.data_marcada_para_checkout ;;
  }

  dimension: detalhes_checkin {
    type: string
    sql: ${TABLE}.detalhes_checkin ;;
  }

  dimension_group: hora_checkout_realizado {
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
    sql: ${TABLE}.hora_checkout_realizado ;;
  }

  dimension: hora_marcada_para_checkout {
    type: number
    sql: ${TABLE}.hora_marcada_para_checkout ;;
  }

  dimension: nome_do_inspetor {
    type: string
    sql: ${TABLE}.nome_do_inspetor ;;
  }

  dimension: status_checkin {
    type: string
    sql: ${TABLE}.status_checkin ;;
  }

  dimension: url_de_assinatura_do_proprietario {
    type: string
    sql: ${TABLE}.url_de_assinatura_do_proprietario ;;
  }

  dimension: ususario_volanty {
    type: string
    sql: ${TABLE}.ususario_volanty ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
