view: pedido_compra {
  sql_table_name: `volanty-production.views.Pedido_Compra`
    ;;

  dimension: _id_ {
    type: string
    sql: ${TABLE}._id_ ;;
  }

  dimension: ano_carro {
    type: string
    sql: ${TABLE}.ano_carro ;;
  }

  dimension: ano_modelo_carro {
    type: string
    sql: ${TABLE}.ano_modelo_carro ;;
  }

  dimension: data_atualizacao {
    type: string
    sql: ${TABLE}.data_atualizacao ;;
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

  dimension_group: data_transferido {
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
    sql: ${TABLE}.data_transferido ;;
  }

  dimension: id_carro {
    type: string
    sql: ${TABLE}.id_carro ;;
  }

  dimension: id_cav {
    type: string
    sql: ${TABLE}.id_cav ;;
  }

  dimension: id_lead {
    type: string
    sql: ${TABLE}.id_lead ;;
  }

  dimension: id_order {
    type: string
    sql: ${TABLE}.id_order ;;
  }

  dimension: km_carro {
    type: number
    sql: ${TABLE}.km_carro ;;
  }

  dimension: marca_carro {
    type: string
    sql: ${TABLE}.marca_carro ;;
  }

  dimension: modelo_carro {
    type: string
    sql: ${TABLE}.modelo_carro ;;
  }

  dimension: notas_internas {
    type: string
    sql: ${TABLE}.notas_internas ;;
  }

  dimension: notas_troca {
    type: string
    sql: ${TABLE}.notas_troca ;;
  }

  dimension: numero_debitos {
    type: number
    sql: ${TABLE}.numero_debitos ;;
  }

  dimension: numero_documentos {
    type: number
    sql: ${TABLE}.numero_documentos ;;
  }

  dimension: placa_carro {
    type: string
    sql: ${TABLE}.placa_carro ;;
  }

  dimension: preco {
    type: number
    sql: ${TABLE}.preco ;;
  }

  dimension: preco_fipe_carro {
    type: number
    sql: ${TABLE}.preco_fipe_carro ;;
  }

  dimension: preco_maximo_carro {
    type: number
    sql: ${TABLE}.preco_maximo_carro ;;
  }

  dimension: preco_minimo_carro {
    type: number
    sql: ${TABLE}.preco_minimo_carro ;;
  }

  dimension: preco_reparo {
    type: number
    sql: ${TABLE}.preco_reparo ;;
  }

  dimension: razao {
    type: string
    sql: ${TABLE}.razao ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: usuario {
    type: string
    sql: ${TABLE}.usuario ;;
  }

  dimension: valor_transferido {
    type: number
    sql: ${TABLE}.valor_transferido ;;
  }

  dimension: veiculo_alienado {
    type: yesno
    sql: ${TABLE}.veiculo_alienado ;;
  }

  dimension: veiculo_possui_chave_extra {
    type: yesno
    sql: ${TABLE}.veiculo_possui_chaveExtra ;;
  }

  dimension: veiculo_possui_isencao {
    type: yesno
    sql: ${TABLE}.veiculo_possui_isencao ;;
  }

  dimension: veiculo_possui_manual {
    type: yesno
    sql: ${TABLE}.veiculo_possui_manual ;;
  }

  dimension: vendedor {
    type: string
    sql: ${TABLE}.vendedor ;;
  }

  dimension: versao_carro {
    type: string
    sql: ${TABLE}.versao_carro ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
