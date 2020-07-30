view: tempo_venda_preco {
  sql_table_name: `volanty-production.adhoc_views.Tempo_Venda_Preco`
    ;;

  dimension: faixa_preco {
    type: string
    sql: ${TABLE}.faixa_preco ;;
  }

  dimension: media_tempo_venda {
    type: number
    sql: ${TABLE}.media_tempo_venda ;;
  }

  dimension: qtd {
    type: number
    sql: ${TABLE}.qtd ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
