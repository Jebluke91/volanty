view: leads_quanto_vale_meu_carro {
  sql_table_name: views.Leads_Quanto_Vale_Meu_Carro ;;

  dimension: ano_carro {
    type: number
    sql: ${TABLE}.ano_carro ;;
  }

  dimension_group: data_criacao {
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
    sql: ${TABLE}.data_criacao ;;
  }

  dimension: email_cliente {
    type: string
    sql: ${TABLE}.email_cliente ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: preco_fipe {
    type: number
    sql: ${TABLE}.preco_fipe ;;
  }

  dimension: preco_maximo_cidade {
    type: number
    sql: ${TABLE}.preco_maximo_cidade ;;
  }

  dimension: preco_maximo_pais {
    type: number
    sql: ${TABLE}.preco_maximo_pais ;;
  }

  dimension: preco_medio_cidade {
    type: number
    sql: ${TABLE}.preco_medio_cidade ;;
  }

  dimension: preco_medio_pais {
    type: number
    sql: ${TABLE}.preco_medio_pais ;;
  }

  dimension: preco_minimo_cidade {
    type: number
    sql: ${TABLE}.preco_minimo_cidade ;;
  }

  dimension: preco_minimo_pais {
    type: number
    sql: ${TABLE}.preco_minimo_pais ;;
  }

  dimension: referencia {
    type: string
    sql: ${TABLE}.referencia ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
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
