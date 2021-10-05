view: creditas_logistica_ {
  sql_table_name: `volanty-production.spreedsheets_data.Creditas_Logistica_`
    ;;

  dimension: bairro___coleta {
    type: string
    sql: ${TABLE}.Bairro___Coleta ;;
  }

  dimension: bairro___entrega {
    type: string
    sql: ${TABLE}.Bairro___Entrega ;;
  }

  dimension: cep___coleta {
    type: string
    sql: ${TABLE}.CEP___Coleta ;;
  }

  dimension: cep___entrega {
    type: string
    sql: ${TABLE}.CEP___Entrega ;;
  }

  dimension: chassi {
    type: string
    sql: ${TABLE}.Chassi ;;
  }

  dimension: cidade___coleta {
    type: string
    sql: ${TABLE}.Cidade___Coleta ;;
  }

  dimension: cidade___entrega {
    type: string
    sql: ${TABLE}.Cidade___Entrega ;;
  }

  dimension: complemento___coleta {
    type: string
    sql: ${TABLE}.Complemento___Coleta ;;
  }

  dimension: complemento___entrega {
    type: string
    sql: ${TABLE}.Complemento___Entrega ;;
  }

  dimension: contato___coleta {
    type: string
    sql: ${TABLE}.Contato___Coleta ;;
  }

  dimension: contato___entrega {
    type: string
    sql: ${TABLE}.Contato___Entrega ;;
  }

  dimension: cpf_cnpj___coleta {
    type: string
    sql: ${TABLE}.CPF_CNPJ___Coleta ;;
  }

  dimension: cpf_cnpj___entrega {
    type: string
    sql: ${TABLE}.CPF_CNPJ___Entrega ;;
  }

  dimension: criador {
    type: string
    sql: ${TABLE}.Criador ;;
  }

  dimension: custos_extras___transporte {
    type: string
    sql: ${TABLE}.Custos_Extras___Transporte ;;
  }

  dimension: data_de_acionamento_da_transportadora {
    type: string
    sql: ${TABLE}.Data_de_Acionamento_da_Transportadora ;;
  }

  dimension_group: data_s__realizada_s____coleta {
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
    sql: ${TABLE}.Data_s__Realizada_s____Coleta ;;
  }

  dimension_group: data_s__realizada_s____entrega {
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
    sql: ${TABLE}.Data_s__Realizada_s____Entrega ;;
  }

  dimension: data_solicitada___coleta {
    type: string
    sql: ${TABLE}.Data_Solicitada___Coleta ;;
  }

  dimension: data_solicitada___entrega {
    type: string
    sql: ${TABLE}.Data_Solicitada___Entrega ;;
  }

  dimension: e_mail___coleta {
    type: string
    sql: ${TABLE}.E_mail___Coleta ;;
  }

  dimension: e_mail___entrega {
    type: string
    sql: ${TABLE}.E_mail___Entrega ;;
  }

  dimension: id___pregao {
    type: string
    sql: ${TABLE}.ID___Pregao ;;
  }

  dimension: id___transporte {
    type: string
    sql: ${TABLE}.ID___Transporte ;;
  }

  dimension: id___veiculo {
    type: number
    sql: ${TABLE}.ID___Veiculo ;;
  }

  dimension: local_de_coleta {
    type: string
    sql: ${TABLE}.Local_de_Coleta ;;
  }

  dimension: local_de_entrega {
    type: string
    sql: ${TABLE}.Local_de_Entrega ;;
  }

  dimension: localizador {
    type: string
    sql: ${TABLE}.Localizador ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.Modelo ;;
  }

  dimension: n__mero___coleta {
    type: string
    sql: ${TABLE}.N__mero___Coleta ;;
  }

  dimension: n__mero___entrega {
    type: string
    sql: ${TABLE}.N__mero___Entrega ;;
  }

  dimension: placa_1 {
    type: string
    sql: ${TABLE}.Placa_1 ;;
  }

  dimension: placa_2 {
    type: string
    sql: ${TABLE}.Placa_2 ;;
  }

  dimension: placa_cod_ {
    type: string
    sql: ${TABLE}.Placa_Cod_ ;;
  }

  dimension: qt__tentativas_frustradas___coleta {
    type: string
    sql: ${TABLE}.Qt__Tentativas_Frustradas___Coleta ;;
  }

  dimension: rua___coleta {
    type: string
    sql: ${TABLE}.Rua___Coleta ;;
  }

  dimension: rua___entrega {
    type: string
    sql: ${TABLE}.Rua___Entrega ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: telefone___coleta {
    type: string
    sql: ${TABLE}.Telefone___Coleta ;;
  }

  dimension: telefone___entrega {
    type: string
    sql: ${TABLE}.Telefone___Entrega ;;
  }

  dimension: tipo_de_solicitacao {
    type: string
    sql: ${TABLE}.Tipo_de_solicitacao ;;
  }

  dimension: tomador__cpf_cnpj_ {
    type: string
    sql: ${TABLE}.Tomador__CPF_CNPJ_ ;;
  }

  dimension: transportadora__cnpj_ {
    type: string
    sql: ${TABLE}.Transportadora__CNPJ_ ;;
  }

  dimension: transportadora__nome_ {
    type: string
    sql: ${TABLE}.Transportadora__Nome_ ;;
  }

  dimension: uf___coleta {
    type: string
    sql: ${TABLE}.UF___Coleta ;;
  }

  dimension: uf___entrega {
    type: string
    sql: ${TABLE}.UF___Entrega ;;
  }

  dimension: valor_base___transporte {
    type: string
    sql: ${TABLE}.Valor_Base___Transporte ;;
  }

  dimension: valor_de_transporte {
    type: number
    sql: ${TABLE}.Valor_de_Transporte ;;
  }

  dimension: valor_do_veiculo {
    type: string
    sql: ${TABLE}.Valor_do_Veiculo ;;
  }

  dimension: valor_total___transporte {
    type: string
    sql: ${TABLE}.Valor_Total___Transporte ;;
  }

  dimension: valor_total_do_pregao_solicitacao {
    type: string
    sql: ${TABLE}.Valor_Total_do_Pregao_Solicitacao ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
