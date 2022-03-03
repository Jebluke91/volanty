view: avaliacao_historico_short {
  sql_table_name: `volanty-production.views.Avaliacoes_Lead_Time`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: ano_modelo {
    type: string
    sql: ${TABLE}.ano_modelo ;;
  }

  dimension_group: data_criacao {
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
    sql: ${TABLE}.data_criacao ;;
  }

  dimension_group: data_status_aguardando_dono {
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
    sql: ${TABLE}.data_status_aguardando_dono ;;
  }

  dimension_group: data_status_aguardando_mesa {
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
    sql: ${TABLE}.data_status_aguardando_mesa ;;
  }

  dimension_group: data_status_finalizado {
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
    sql: ${TABLE}.data_status_finalizado ;;
  }

  dimension_group: data_status_gerando_proposta {
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
    sql: ${TABLE}.data_status_gerando_proposta ;;
  }

  dimension: km {
    type: string
    sql: ${TABLE}.km ;;
  }

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }

  dimension: lead_ddd {
    type: string
    sql: ${TABLE}.lead_ddd ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: minutos_para_aguardando_dono {
    type: number
    sql: ${TABLE}.minutos_para_aguardandoDono ;;
  }

  dimension: minutos_para_aguardando_mesa {
    type: number
    sql: ${TABLE}.minutos_para_aguardandoMesa ;;
  }

  dimension: minutos_para_finalizado {
    type: number
    sql: ${TABLE}.minutos_para_finalizado ;;
  }

  dimension: minutos_para_gerando_proposta {
    type: number
    sql: ${TABLE}.minutos_para_gerandoProposta ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: tipo_precificacao {
    type: string
    sql: ${TABLE}.tipo_precificacao ;;
  }

  dimension: ultimo_status {
    type: string
    sql: ${TABLE}.ultimo_status ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  dimension: consultor_status_pendente {
    type: string
    sql: ${TABLE}.consultor_status_pending ;;
  }

  dimension: consultor_status_aguardando_mesa {
    type: string
    sql: ${TABLE}.consultor_status_aguardando_mesa ;;
  }

  dimension: consultor_status_gerando_proposta {
    type: string
    sql: ${TABLE}.consultor_status_gerando_proposta ;;
  }

  dimension: consultor_status_aguardando_dono {
    type: string
    sql: ${TABLE}.consultor_status_aguardando_dono ;;
  }

  dimension: consultor_status_finalizado {
    type: string
    sql: ${TABLE}.consultor_status_finalizado ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
