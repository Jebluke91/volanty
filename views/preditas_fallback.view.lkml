view: preditas_fallback {
  sql_table_name: `volanty-production.views.Preditas_Fallback`
    ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: carroceria {
    type: string
    sql: ${TABLE}.Carroceria ;;
  }

  dimension: fipe_cod {
    type: string
    sql: ${TABLE}.Fipe_Cod ;;
  }

  dimension: fipe_value {
    type: number
    sql: ${TABLE}.fipe_value ;;
  }

  dimension: interval_km_1 {
    type: string
    sql: ${TABLE}.interval_km_1 ;;
  }

  dimension: interval_km_2 {
    type: string
    sql: ${TABLE}.interval_km_2 ;;
  }

  dimension: interval_km_3 {
    type: string
    sql: ${TABLE}.interval_km_3 ;;
  }

  dimension: interval_km_4 {
    type: string
    sql: ${TABLE}.interval_km_4 ;;
  }

  dimension: interval_km_5 {
    type: string
    sql: ${TABLE}.interval_km_5 ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: model_year {
    type: number
    sql: ${TABLE}.modelYear ;;
  }

  dimension: n_ofertas {
    type: number
    sql: ${TABLE}.N_ofertas ;;
  }

  dimension: p0_1 {
    type: number
    sql: ${TABLE}.P0_1 ;;
  }

  dimension: p0_2 {
    type: number
    sql: ${TABLE}.P0_2 ;;
  }

  dimension: p0_3 {
    type: number
    sql: ${TABLE}.P0_3 ;;
  }

  dimension: p0_4 {
    type: number
    sql: ${TABLE}.P0_4 ;;
  }

  dimension: p0_5 {
    type: number
    sql: ${TABLE}.P0_5 ;;
  }

  dimension: p0_6 {
    type: number
    sql: ${TABLE}.P0_6 ;;
  }

  dimension: p0_7 {
    type: number
    sql: ${TABLE}.P0_7 ;;
  }

  dimension: p0_8 {
    type: number
    sql: ${TABLE}.P0_8 ;;
  }

  dimension: p0_9 {
    type: number
    sql: ${TABLE}.P0_9 ;;
  }

  dimension: preco_compra {
    type: number
    sql: ${TABLE}.Preco_Compra ;;
  }

  dimension: price_km_1 {
    type: number
    sql: ${TABLE}.price_km_1 ;;
  }

  dimension: price_km_2 {
    type: number
    sql: ${TABLE}.price_km_2 ;;
  }

  dimension: price_km_3 {
    type: number
    sql: ${TABLE}.price_km_3 ;;
  }

  dimension: price_km_4 {
    type: number
    sql: ${TABLE}.price_km_4 ;;
  }

  dimension: price_km_5 {
    type: number
    sql: ${TABLE}.price_km_5 ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }

  dimension: version_id {
    type: string
    sql: ${TABLE}.versionId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
