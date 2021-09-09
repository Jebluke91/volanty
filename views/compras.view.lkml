view: compras {
  sql_table_name: `volanty-production.views.Compras`
    ;;

  dimension: _id_ {
    type: string
    sql: ${TABLE}._id_ ;;
  }

  dimension: ano_fabricacao {
    type: string
    sql: ${TABLE}.ano_fabricacao ;;
  }

  dimension: ano_modelo {
    type: string
    sql: ${TABLE}.ano_modelo ;;
  }

  dimension: board_value_type {
    type: string
    sql: ${TABLE}.board_value_type ;;
  }

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
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

  dimension: data_transferido {
    type: string
    sql: ${TABLE}.data_transferido ;;
  }

  dimension: email_proprietario {
    type: string
    sql: ${TABLE}.email_proprietario ;;
  }

  dimension: id_carro {
    type: string
    sql: ${TABLE}.id_carro ;;
  }

  dimension: id_lead {
    type: string
    sql: ${TABLE}.id_lead ;;
  }

  dimension: id_order {
    type: string
    sql: ${TABLE}.id_order ;;
  }

  dimension: km {
    type: string
    sql: ${TABLE}.km ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: media_origin {
    type: string
    sql: ${TABLE}.media_origin ;;
  }

  dimension: media_utm_campaign {
    type: string
    sql: ${TABLE}.media_utmCampaign ;;
  }

  dimension: media_utmsource {
    type: string
    sql: ${TABLE}.media_utmsource ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: modelo_escolhido {
    type: string
    sql: ${TABLE}.modelo_escolhido ;;
  }

  dimension: nome_proprietario {
    type: string
    sql: ${TABLE}.nome_proprietario ;;
  }

  dimension: notas_internas {
    type: string
    sql: ${TABLE}.notas_internas ;;
  }

  dimension: notas_troca {
    type: string
    sql: ${TABLE}.notas_troca ;;
  }

  dimension: numero_documentos {
    type: string
    sql: ${TABLE}.numero_documentos ;;
  }

  dimension: partner {
    type: string
    sql: ${TABLE}.partner ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  dimension: preco {
    type: string
    sql: ${TABLE}.preco ;;
  }

  dimension: preco_fipe_carro {
    type: string
    sql: ${TABLE}.preco_fipe_carro ;;
  }

  dimension: preco_maximo_carro {
    type: string
    sql: ${TABLE}.preco_maximo_carro ;;
  }

  dimension: preco_minimo_carro {
    type: string
    sql: ${TABLE}.preco_minimo_carro ;;
  }

  dimension: preco_reparo {
    type: string
    sql: ${TABLE}.preco_reparo ;;
  }

  dimension: razao {
    type: string
    sql: ${TABLE}.razao ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: telefone_proprietario {
    type: string
    sql: ${TABLE}.telefone_proprietario ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }

  dimension: troca {
    type: string
    sql: ${TABLE}.troca ;;
  }

  dimension: uf {
    type: string
    sql: ${TABLE}.UF ;;
  }

  dimension: usuario {
    type: string
    sql: ${TABLE}.usuario ;;
  }

  dimension: valor_transferido {
    type: string
    sql: ${TABLE}.valor_transferido ;;
  }

  dimension: veiculo_alienado {
    type: string
    sql: ${TABLE}.veiculo_alienado ;;
  }

  dimension: veiculo_possui_chave_extra {
    type: string
    sql: ${TABLE}.veiculo_possui_chaveExtra ;;
  }

  dimension: veiculo_possui_isencao {
    type: string
    sql: ${TABLE}.veiculo_possui_isencao ;;
  }

  dimension: veiculo_possui_manual {
    type: string
    sql: ${TABLE}.veiculo_possui_manual ;;
  }

  dimension: versao {
    type: string
    sql: ${TABLE}.versao ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
