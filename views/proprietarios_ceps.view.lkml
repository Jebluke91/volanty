view: proprietarios_ceps {
  sql_table_name: `volanty-production.views.Proprietarios_Ceps`
    ;;

  dimension: bairro {
    type: string
    sql: ${TABLE}.bairro ;;
  }

  dimension: cep {
    type: string
    sql: ${TABLE}.cep ;;
  }

  dimension: cidade {
    type: string
    sql: ${TABLE}.cidade ;;
  }

  dimension: data_atualizado {
    type: string
    sql: ${TABLE}.data_atualizado ;;
  }

  dimension: data_criado {
    type: string
    sql: ${TABLE}.data_criado ;;
  }

  dimension: endereco {
    type: string
    sql: ${TABLE}.endereco ;;
  }

  dimension: uf {
    type: string
    sql: ${TABLE}.uf ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
