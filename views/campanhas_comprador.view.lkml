view: campanhas_comprador {
  sql_table_name: `volanty-production.views.Campanhas_Comprador`
    ;;

  dimension_group: data {
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
    sql: ${TABLE}.data ;;
  }

  dimension: meta_nome_campanha {
    type: string
    sql: ${TABLE}.meta_nome_campanha ;;
  }

  dimension: produto {
    type: string
    sql: ${TABLE}.produto ;;
  }

  dimension: qtd_lead {
    type: number
    sql: ${TABLE}.qtd_lead ;;
  }

  dimension: qtd_venda {
    type: number
    sql: ${TABLE}.qtd_venda ;;
  }

  dimension: qtd_visita {
    type: number
    sql: ${TABLE}.qtd_visita ;;
  }

  dimension: referencia_lead {
    type: string
    sql: ${TABLE}.referencia_lead ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
