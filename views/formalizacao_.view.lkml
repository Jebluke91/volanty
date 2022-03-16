view: formalizacao_ {
  sql_table_name: `volanty-production.spreedsheets_data.Formalizacao_`
    ;;

  dimension: analista_pos_vendas {
    type: string
    sql: ${TABLE}.analista_pos_vendas ;;
  }

  dimension: atribuido {
    type: yesno
    sql: ${TABLE}.atribuido ;;
  }

  dimension: beneficio {
    type: string
    sql: ${TABLE}.beneficio ;;
  }

  dimension: cliente {
    type: string
    sql: ${TABLE}.Cliente ;;
  }

  dimension: consultor_comercial {
    type: string
    sql: ${TABLE}.Consultor_comercial ;;
  }

  dimension: contrato_assinado {
    type: yesno
    sql: ${TABLE}.Contrato_Assinado ;;
  }

  dimension: contrato_emitido {
    type: yesno
    sql: ${TABLE}.Contrato_Emitido ;;
  }

  dimension: empresa {
    type: string
    sql: ${TABLE}.Empresa ;;
  }

  dimension: fjt_6313 {
    type: string
    sql: ${TABLE}.FJT_6313 ;;
  }

  dimension: tripulante {
    type: string
    sql: ${TABLE}.tripulante ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
