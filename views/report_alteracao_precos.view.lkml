view: report_alteracao_precos {
  sql_table_name: `volanty-production.adhoc_views.Report_Alteracao_Precos`
    ;;

  dimension: adprice {
    type: number
    sql: ${TABLE}.adprice ;;
  }

  dimension: ano_modelo {
    type: string
    sql: ${TABLE}.ano_modelo ;;
  }

  dimension: carroceria {
    type: string
    sql: ${TABLE}.carroceria ;;
  }

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
  }

  dimension: cor {
    type: string
    sql: ${TABLE}.cor ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }

  dimension_group: first_update {
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
    sql: ${TABLE}.first_update ;;
  }

  dimension: km {
    type: number
    sql: ${TABLE}.km ;;
  }

  dimension_group: last_update {
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
    sql: ${TABLE}.last_update ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: plate {
    type: string
    sql: ${TABLE}.plate ;;
  }

  dimension: preco_web_motors {
    type: number
    sql: ${TABLE}.preco_web_motors ;;
  }

  dimension: produto {
    type: string
    sql: ${TABLE}.produto ;;
  }

  dimension: qtd_leads {
    type: number
    sql: ${TABLE}.qtd_leads ;;
  }

  dimension: sellprice {
    type: number
    sql: ${TABLE}.sellprice ;;
  }

  dimension: semana {
    type: number
    sql: ${TABLE}.semana ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: transmissao {
    type: string
    sql: ${TABLE}.transmissao ;;
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
