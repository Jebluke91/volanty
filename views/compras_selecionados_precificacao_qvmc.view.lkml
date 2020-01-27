view: compras_selecionados_precificacao_qvmc {
  sql_table_name: views.ComprasSelecionadosPrecificacaoQVMC ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: acerto_precificador_qvmc {
    type: string
    sql: ${TABLE}.acerto_precificador_qvmc ;;
  }

  dimension: carro_marca {
    type: string
    sql: ${TABLE}.carro_marca ;;
  }

  dimension: carro_modelo {
    type: string
    sql: ${TABLE}.carro_modelo ;;
  }

  dimension: carro_versao {
    type: string
    sql: ${TABLE}.carro_versao ;;
  }

  dimension: compra_placa {
    type: string
    sql: ${TABLE}.compra_placa ;;
  }

  dimension: compra_status {
    type: string
    sql: ${TABLE}.compra_status ;;
  }

  dimension: compra_uf {
    type: string
    sql: ${TABLE}.compra_uf ;;
  }

  dimension: custos_preparacao {
    type: number
    sql: ${TABLE}.custos_preparacao ;;
  }

  dimension: custos_reparo {
    type: number
    sql: ${TABLE}.custos_reparo ;;
  }

  dimension_group: data_compra {
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
    sql: ${TABLE}.data_compra ;;
  }

  dimension: debitos {
    type: number
    sql: ${TABLE}.debitos ;;
  }

  dimension: km_carro {
    type: number
    sql: ${TABLE}.km_carro ;;
  }

  dimension: origem {
    type: string
    sql: ${TABLE}.origem ;;
  }

  dimension: preco_medio {
    type: number
    sql: ${TABLE}.precoMedio ;;
  }

  dimension: qvmc_max {
    type: number
    sql: ${TABLE}.qvmc_max ;;
  }

  dimension: qvmc_min {
    type: number
    sql: ${TABLE}.qvmc_min ;;
  }

  dimension: repasso_ao_proprietario {
    type: number
    sql: ${TABLE}.repasso_ao_proprietario ;;
  }

  dimension: valor_anuncio {
    type: number
    sql: ${TABLE}.valor_anuncio ;;
  }

  dimension: valor_proposta {
    type: number
    sql: ${TABLE}.valor_proposta ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
