view: tempo_venda_km {
  sql_table_name: `volanty-production.adhoc_views.Tempo_Venda_KM`
    ;;

  dimension: faixa_km {
    type: string
    sql: ${TABLE}.faixa_km ;;
  }

  dimension: media_tempo_venda {
    type: number
    sql: ${TABLE}.media_tempo_venda ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }

}
