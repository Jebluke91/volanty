view: qvmc {
  sql_table_name: views.QVMC ;;

  dimension_group: ano_anuncio {
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
    sql: ${TABLE}.anoAnuncio ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: km_medio {
    type: number
    sql: ${TABLE}.kmMedio ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: model_year {
    type: number
    sql: ${TABLE}.modelYear ;;
  }

  dimension: piso_preco_concessionaria {
    type: number
    sql: ${TABLE}.pisoPrecoConcessionaria ;;
  }

  dimension: piso_preco_medio {
    type: number
    sql: ${TABLE}.pisoPrecoMedio ;;
  }

  dimension: piso_preco_medio_volanty {
    type: number
    sql: ${TABLE}.pisoPrecoMedioVolanty ;;
  }

  dimension: preco_fipe {
    type: number
    sql: ${TABLE}.precoFipe ;;
  }

  dimension: preco_maximo {
    type: number
    sql: ${TABLE}.precoMaximo ;;
  }

  dimension: preco_medio {
    type: number
    sql: ${TABLE}.precoMedio ;;
  }

  dimension: preco_minimo {
    type: number
    sql: ${TABLE}.precoMinimo ;;
  }

  dimension: qtd {
    type: number
    sql: ${TABLE}.qtd ;;
  }

  dimension: razao_preco_maximo_medio {
    type: number
    sql: ${TABLE}.razaoPrecoMaximoMedio ;;
  }

  dimension: razao_preco_minimo_medio {
    type: number
    sql: ${TABLE}.razaoPrecoMinimoMedio ;;
  }

  dimension: teto_preco_concessionaria {
    type: number
    sql: ${TABLE}.tetoPrecoConcessionaria ;;
  }

  dimension: teto_preco_medio {
    type: number
    sql: ${TABLE}.tetoPrecoMedio ;;
  }

  dimension: teto_preco_medio_volanty {
    type: number
    sql: ${TABLE}.tetoPrecoMedioVolanty ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }

  dimension: version_id {
    type: string
    sql: ${TABLE}.versionId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
