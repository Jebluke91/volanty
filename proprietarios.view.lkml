view: proprietarios {
  sql_table_name: views.Proprietarios ;;

  dimension: bairro {
    type: string
    sql: ${TABLE}.bairro ;;
  }

  dimension: banco {
    type: string
    sql: ${TABLE}.banco ;;
  }

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
  }

  dimension: cep {
    type: number
    sql: ${TABLE}.cep ;;
  }

  dimension: complemento_endereco {
    type: string
    sql: ${TABLE}.complemento_endereco ;;
  }

  dimension: cpf {
    type: number
    sql: ${TABLE}.cpf ;;
  }

  dimension_group: data_ultima_atualizacao {
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
    sql: ${TABLE}.data_ultima_atualizacao ;;
  }

  dimension: dv {
    type: number
    sql: ${TABLE}.dv ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: email_usuario_volanty {
    type: string
    sql: ${TABLE}.email_usuario_volanty ;;
  }

  dimension: endereco {
    type: string
    sql: ${TABLE}.endereco ;;
  }

  dimension: nome_cliente {
    type: string
    sql: ${TABLE}.nome_cliente ;;
  }

  dimension: numero_endereco {
    type: string
    sql: ${TABLE}.numero_endereco ;;
  }

  dimension: proprietario_conta {
    type: string
    sql: ${TABLE}.proprietario_conta ;;
  }

  dimension: telefone {
    type: string
    sql: ${TABLE}.telefone ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
