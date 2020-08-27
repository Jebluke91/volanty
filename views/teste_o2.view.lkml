view: teste_o2 {
  sql_table_name: `volanty-production.spreedsheets_data.teste_o2`
    ;;

  dimension_group: m__s {
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
    sql: ${TABLE}.M__s ;;
  }

  dimension: pesquisa {
    type: number
    sql: ${TABLE}.Pesquisa ;;
  }

  dimension: qtd {
    type: number
    sql: ${TABLE}.QTD ;;
  }

  dimension: taxa_de_sucesso {
    type: number
    sql: ${TABLE}.Taxa_de_Sucesso ;;
  }

  dimension: recall {
    type: number
    sql: ${TABLE}.recall ;;
  }

  dimension: precision {
    type: number
    sql: ${TABLE}.precision ;;
  }

  dimension: indice_cbk_controle {
    type: number
    sql: ${TABLE}.__ndice_cbk_controle ;;
  }

  dimension: indice_cbk_tratamento {
    type: number
    sql: ${TABLE}.__ndice_cbk_tratamento ;;
  }

  dimension: Reprovacoes_controle {
    type: number
    sql: ${TABLE}.Reprovac__es_controle ;;
  }

  dimension: Reprovacoes_tratamento {
    type: number
    sql: ${TABLE}.Reprovac__es_tratamento ;;
  }
  measure: count {
    type: count
    drill_fields: []
  }
}
