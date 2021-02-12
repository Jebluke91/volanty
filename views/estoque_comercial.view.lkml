view: estoque_comercial {
  sql_table_name: `volanty-production.adhoc_views.Estoque_Comercial`
    ;;

  dimension: ano_modelo {
    type: number
    sql: ${TABLE}.ano_modelo ;;
  }

  dimension: anunciado {
    type: string
    sql: ${TABLE}.Anunciado ;;
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

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.Modelo ;;
  }

  dimension: placa_1 {
    type: string
    sql: ${TABLE}.placa_1 ;;
  }

  dimension: placa_2 {
    type: string
    sql: ${TABLE}.placa_2 ;;
  }

  dimension: UF {
    type: string
    sql: ${TABLE}.UF ;;
  }

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
  }

  dimension: valor_compra {
    type: number
    sql: ${TABLE}.valor_compra ;;
  }

  dimension: fipe {
    type: number
    sql: ${TABLE}.fipe ;;
  }



  measure: count {
    type: count
    drill_fields: []
  }
}
