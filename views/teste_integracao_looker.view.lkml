view: teste_integracao_looker {
  sql_table_name: `volanty-production.adhoc_views.teste_integracao_looker`
    ;;

  dimension: faixa_km {
    type: number
    sql: ${TABLE}.faixa_km ;;
  }

  dimension: media_tempo_venda {
    type: number
    sql: ${TABLE}.media_tempo_venda ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
