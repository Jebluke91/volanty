view: status_confirmacao_agendamento {
  sql_table_name: views.Status_confirmacao_agendamento ;;

  dimension: ano {
    type: number
    sql: ${TABLE}.Ano ;;
  }

  dimension: ano_carro {
    type: number
    sql: ${TABLE}.Ano_Carro ;;
  }

  dimension_group: data_agendamento_criado {
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
    sql: CAST(${TABLE}.data_agendamento_criado AS TIMESTAMP) ;;
  }

  dimension_group: data_atualizacao {
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
    sql: ${TABLE}.Data_Atualizacao ;;
  }

  dimension: dia {
    type: number
    sql: ${TABLE}.Dia ;;
  }

  dimension: email_cliente {
    type: string
    sql: ${TABLE}.Email_Cliente ;;
  }

  dimension: hora {
    type: number
    sql: ${TABLE}.Hora ;;
  }

  dimension: local {
    type: string
    sql: ${TABLE}.Local ;;
  }

  dimension: mes {
    type: number
    sql: ${TABLE}.Mes ;;
  }

  dimension: modelo_carro {
    type: string
    sql: ${TABLE}.Modelo_Carro ;;
  }

  dimension: modelo_carro_detalhado {
    type: string
    sql: ${TABLE}.Modelo_Carro_Detalhado ;;
  }

  dimension: nome_cliente {
    type: string
    sql: ${TABLE}.Nome_Cliente ;;
  }

  dimension: placa_carro {
    type: string
    sql: ${TABLE}.Placa_Carro ;;
  }

  dimension: quilometragem {
    type: number
    sql: ${TABLE}.Quilometragem ;;
  }

  dimension: situacao {
    type: string
    sql: ${TABLE}.Situacao ;;
  }

  dimension: telefone_cliente {
    type: string
    sql: ${TABLE}.Telefone_Cliente ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
