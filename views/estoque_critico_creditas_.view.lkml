view: estoque_critico_creditas_ {
  sql_table_name: `volanty-production.spreedsheets_data.Estoque_Critico_Creditas_`
    ;;

  dimension: dias_em_estoque {
    type: number
    sql: ${TABLE}.Dias_Em_Estoque ;;
  }

  dimension: fipe_compra {
    type: string
    sql: ${TABLE}.fipe_compra ;;
  }

  dimension: km {
    type: number
    sql: ${TABLE}.km ;;
  }

  dimension: leads_dia {
    type: number
    sql: ${TABLE}.Leads_Dia ;;
  }

  dimension: local {
    type: string
    sql: ${TABLE}.local ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.Marca ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.Modelo ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  dimension: preco_venda {
    type: string
    sql: ${TABLE}.preco_venda ;;
  }

  dimension: qtd_leads {
    type: number
    sql: ${TABLE}.Qtd_Leads ;;
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
