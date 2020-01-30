view: funil_estoque {
  sql_table_name: views.Funil_Estoque ;;

  dimension: agendamentos {
    type: number
    sql: ${TABLE}.agendamentos ;;
  }

  dimension: anuncios {
    type: number
    sql: ${TABLE}.anuncios ;;
  }

  dimension: inspecoes {
    type: number
    sql: ${TABLE}.inspecoes ;;
  }

  dimension: taxa_anuncio {
    type: number
    sql: ${TABLE}.taxa_anuncio ;;
  }

  dimension: taxa_comparecimento_inspecao {
    type: number
    sql: ${TABLE}.taxa_comparecimento_inspecao ;;
  }

  dimension: taxa_nao_comparecimento_inspecao {
    type: number
    sql: ${TABLE}.taxa_nao_comparecimento_inspecao ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
