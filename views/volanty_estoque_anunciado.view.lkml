view: volanty_estoque_anunciado {
  sql_table_name: `volanty-production.views.Volanty_Estoque_Anunciado`
    ;;

  dimension: ano_modelo {
    type: string
    sql: ${TABLE}.ano_modelo ;;
  }

  dimension: carroceria {
    type: string
    sql: ${TABLE}.carroceria ;;
  }

  dimension: categoria {
    type: string
    sql: ${TABLE}.categoria ;;
  }

  dimension: cav {
    type: string
    sql: ${TABLE}.CAV ;;
  }

  dimension: compra {
    type: number
    sql: ${TABLE}.compra ;;
  }

  dimension: cor {
    type: string
    sql: ${TABLE}.cor ;;
  }

  dimension: critico_dias_em_estoque {
    type: string
    sql: ${TABLE}.critico_dias_em_estoque ;;
  }

  dimension: critico_lead_por_dias {
    type: string
    sql: ${TABLE}.critico_lead_por_dias ;;
  }

  dimension_group: data_anunciado {
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
    sql: ${TABLE}.data_anunciado ;;
  }

  dimension: dias_em_estoque {
    type: number
    sql: ${TABLE}.Dias_Em_Estoque ;;
  }

  dimension: fipe {
    type: number
    sql: ${TABLE}.fipe ;;
  }

  dimension: fornecedor {
    type: string
    sql: ${TABLE}.fornecedor ;;
  }

  dimension: inspectionkey {
    type: number
    sql: ${TABLE}.inspectionkey ;;
  }

  dimension: km {
    type: number
    sql: ${TABLE}.km ;;
  }

  dimension: link_anuncio {
    type: string
    sql: ${TABLE}.link_anuncio ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: media_venda {
    type: number
    sql: ${TABLE}.Media_Venda ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: origem {
    type: string
    sql: ${TABLE}.origem ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  dimension: preco_por {
    type: number
    sql: ${TABLE}.preco_por ;;
  }

  dimension: qtd_lead {
    type: number
    sql: ${TABLE}.qtd_lead ;;
  }

  dimension: qtd_visita {
    type: number
    sql: ${TABLE}.qtd_visita ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: tag {
    type: string
    sql: ${TABLE}.tag ;;
  }

  dimension: tag2 {
    type: string
    sql: ${TABLE}.tag2 ;;
  }

  dimension: tag_black_friday {
    type: string
    sql: ${TABLE}.tag_black_friday ;;
  }

  dimension: uf {
    type: string
    sql: ${TABLE}.UF ;;
  }

  dimension: versao {
    type: string
    sql: ${TABLE}.versao ;;
  }

  dimension: webmotors_average {
    type: number
    sql: ${TABLE}.webmotors_average ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
