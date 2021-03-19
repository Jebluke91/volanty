view: estoque_movimentacao_detalhado_v1 {
  sql_table_name: `volanty-production.raw_views.Estoque_movimentacao_detalhado_v1`
    ;;

  dimension: ano_modelo {
    type: string
    sql: ${TABLE}.ano_modelo ;;
  }

  dimension: cor {
    type: string
    sql: ${TABLE}.cor ;;
  }

  dimension: estoque_inicio_mes {
    type: number
    sql: ${TABLE}.estoque_inicio_mes ;;
  }

  dimension: estoque_inicio_mes_mais_entrada {
    type: number
    sql: ${TABLE}.estoque_inicio_mes_mais_entrada ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: mes {
    type: date
    sql: ${TABLE}.mes ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: qtd_lead {
    type: number
    sql: ${TABLE}.qtd_lead ;;
  }

  dimension: vendas {
    type: number
    sql: ${TABLE}.vendas ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
