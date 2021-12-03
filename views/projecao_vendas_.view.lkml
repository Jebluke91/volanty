view: projecao_vendas_ {
  sql_table_name: `volanty-production.spreedsheets_data.Projecao_Vendas_`
    ;;

  dimension: projecao {
    type: number
    sql: ${TABLE}.Projecao ;;
  }

  dimension: Meta_venda {
    type: number
    sql: ${TABLE}.Meta_venda ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
