view: creditas_compras_b2_b {
  sql_table_name: `volanty-production.spreedsheets_data.Creditas_Compras_B2B`
    ;;

  dimension: ano_fabricac__o {
    type: string
    sql: ${TABLE}.Ano_Fabricac__o ;;
  }

  dimension: ano_modelo {
    type: string
    sql: ${TABLE}.Ano_Modelo ;;
  }

  dimension: data_compra {
    type: string
    sql: ${TABLE}.Data_Compra ;;
  }

  dimension: fipe {
    type: number
    sql: ${TABLE}.FIPE ;;
  }

  dimension: fipe__ {
    type: string
    sql: ${TABLE}.FIPE__ ;;
  }

  dimension: km {
    type: number
    sql: ${TABLE}.km ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.Marca ;;
  }

  dimension_group: mes_compra {
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
    sql: ${TABLE}.Mes_Compra ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.Modelo ;;
  }

  dimension: percentil_20 {
    type: string
    sql: ${TABLE}.Percentil_20 ;;
  }

  dimension: pipe {
    type: string
    sql: ${TABLE}.Pipe ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.Placa ;;
  }

  dimension: sourcing {
    type: string
    sql: ${TABLE}.Sourcing ;;
  }

  dimension: valor_compra {
    type: number
    sql: ${TABLE}.valor_compra ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
