view: estoque_critico_creditas_ {
  sql_table_name: `volanty-production.spreedsheets_data.Estoque_Critico_Creditas_`
    ;;


  set: car_details {
    fields: [placa,marca,modelo,versao,preco_venda,qtd_leads,dias_em_estoque]
  }



  dimension: dias_em_estoque {
    type: number
    sql: ${TABLE}.Dias_Em_Estoque ;;
    drill_fields: [car_details*]
    html:{{ rendered_value }} <br>
    {{ modelo._rendered_value }} - {{ placa._rendered_value }} <br>
    ;;  ## here we use || to concatenate the values

  }

  dimension: fipe_compra {
    type: string
    sql: ${TABLE}.fipe_compra ;;
  }

  dimension: compra {
    type: number
    sql: ${TABLE}.compra ;;
  }



  dimension: categoria {
    type: string
    sql: ${TABLE}.categoria ;;
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
