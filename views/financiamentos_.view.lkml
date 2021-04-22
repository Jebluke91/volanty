view: financiamentos_ {
  sql_table_name: `volanty-production.spreedsheets_data.Financiamento_`
    ;;

  dimension: banco {
    type: string
    sql: ${TABLE}.Banco ;;
  }

  dimension: cpf {
    type: string
    sql: ${TABLE}.CPF ;;
  }

  dimension_group: data_da_proposta {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Data_da_Proposta ;;
  }

  dimension_group: data_de_pagamento {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Data_De_Pagamento ;;
  }

  dimension: justificativa {
    type: string
    sql: ${TABLE}.JUSTIFICATIVA ;;
  }

  dimension: nome {
    type: string
    sql: ${TABLE}.Nome ;;
  }

  dimension: numero_de_parcelas {
    type: number
    sql: ${TABLE}.Numero_De_parcelas ;;
  }

  dimension: percentual_retorno {
    type: number
    sql: ${TABLE}.Percentual_Retorno ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.Placa ;;
  }

  dimension: plus {
    type: number
    sql: ${TABLE}.Plus ;;
  }

  dimension: retorno {
    type: string
    sql: ${TABLE}.Retorno ;;
  }

  dimension: spf {
    type: string
    sql: ${TABLE}.SPF ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: taxa_ {
    type: number
    sql: ${TABLE}.Taxa_ ;;
  }

  dimension: valor_da_parcela {
    type: number
    sql: ${TABLE}.Valor_da_Parcela ;;
  }

  dimension: valor_financiado {
    type: number
    sql: ${TABLE}.Valor_Financiado ;;
  }

  dimension: valor_pago {
    type: number
    sql: ${TABLE}.Valor_Pago ;;
  }

  dimension: valor_total {
    type: number
    sql: ${TABLE}.Valor_Total ;;
  }

  dimension: veiculo {
    type: string
    sql: ${TABLE}.Veiculo ;;
  }

  dimension: vendedor {
    type: string
    sql: ${TABLE}.vendedor ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
