view: liquidez_modelo {
  sql_table_name: `volanty-production.adhoc_views.Liquidez_Modelo`
    ;;

  dimension: first_week {
    type: number
    sql: ${TABLE}.first_week ;;
  }

  dimension: first_week_percentual {
    type: number
    sql: ${TABLE}.first_week_percentual ;;
  }

  dimension: greater_30_days {
    type: number
    sql: ${TABLE}.greater_30_days ;;
  }

  dimension: greater_30_days_percentual {
    type: number
    sql: ${TABLE}.greater_30_days_percentual ;;
  }

  dimension: leads_por_venda {
    type: number
    sql: ${TABLE}.leads_por_venda ;;
  }

  dimension: less_20_days {
    type: number
    sql: ${TABLE}.less_20_days ;;
  }

  dimension: less_20_days_percentual {
    type: number
    sql: ${TABLE}.less_20_days_percentual ;;
  }

  dimension: less_30_days {
    type: number
    sql: ${TABLE}.less_30_days ;;
  }

  dimension: less_30_days_percentual {
    type: number
    sql: ${TABLE}.less_30_days_percentual ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: qtd_leads {
    type: number
    sql: ${TABLE}.qtd_leads ;;
  }

  dimension: qtd_visitas {
    type: number
    sql: ${TABLE}.qtd_visitas ;;
  }

  dimension: second_week {
    type: number
    sql: ${TABLE}.second_week ;;
  }

  dimension: second_week_percentual {
    type: number
    sql: ${TABLE}.second_week_percentual ;;
  }

  dimension: third_week {
    type: number
    sql: ${TABLE}.third_week ;;
  }

  dimension: third_week_percentual {
    type: number
    sql: ${TABLE}.third_week_percentual ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }

  dimension: visitas_por_venda {
    type: number
    sql: ${TABLE}.visitas_por_venda ;;
  }

  dimension: total_vendidos {
    type: number
    sql: ${TABLE}.total_vendidos ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
