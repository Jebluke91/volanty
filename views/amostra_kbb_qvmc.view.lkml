view: amostra_kbb_qvmc {
  sql_table_name: `volanty-production.spreedsheets_data.Amostra_KBB_QVMC`
    ;;

  dimension: ano_modelo {
    type: number
    sql: ${TABLE}.ANO_MODELO ;;
  }

  dimension: kbb_b2_c {
    type: number
    sql: ${TABLE}.KBB_B2C ;;
  }

  dimension: kbb_c2_b {
    type: number
    sql: ${TABLE}.KBB_C2B ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.MARCA ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.MODELO ;;
  }

  dimension: preco_maximo_compra {
    type: number
    sql: ${TABLE}.preco_maximo_compra ;;
  }

  dimension: preco_maximo_consignado {
    type: number
    sql: ${TABLE}.preco_maximo_consignado ;;
  }

  dimension: preco_minimo_compra {
    type: number
    sql: ${TABLE}.preco_minimo_compra ;;
  }

  dimension: preco_minimo_consignado {
    type: number
    sql: ${TABLE}.preco_minimo_consignado ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.Tipo ;;
  }

  dimension: versao {
    type: string
    sql: ${TABLE}.VERSAO ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
