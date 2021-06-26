view: rmse_vendas_oficial {
  sql_table_name: `volanty-production.adhoc_views.RMSE_VendasOficial`
    ;;

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: n_leads {
    type: number
    sql: ${TABLE}.n_leads ;;
  }

  dimension: qtd {
    type: number
    sql: ${TABLE}.qtd ;;
  }

  dimension: rmse_norm_papito {
    type: number
    sql: ${TABLE}.rmse_norm_papito ;;
  }

  dimension: rmse_norm_qvmc {
    type: number
    sql: ${TABLE}.rmse_norm_qvmc ;;
  }

  dimension: rmse_norm_qvmc_adj {
    type: number
    sql: ${TABLE}.rmse_norm_qvmc_adj ;;
  }

  dimension: rmse_norm_socrates {
    type: number
    sql: ${TABLE}.rmse_norm_socrates ;;
  }

  dimension: rmse_papito {
    type: number
    sql: ${TABLE}.rmse_papito ;;
  }

  dimension: rmse_qvmc {
    type: number
    sql: ${TABLE}.rmse_qvmc ;;
  }

  dimension: rmse_qvmc_adj {
    type: number
    sql: ${TABLE}.rmse_qvmc_adj ;;
  }

  dimension: rmse_socrates {
    type: number
    sql: ${TABLE}.rmse_socrates ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
