view: usuarios {
  sql_table_name: views.Usuarios ;;

  dimension: apelido {
    type: string
    sql: ${TABLE}.apelido ;;
  }

  dimension: cidade {
    type: string
    sql: ${TABLE}.cidade ;;
  }

  dimension: email_cliente {
    type: string
    sql: ${TABLE}.email_cliente ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }

  dimension: nome_cliente {
    type: string
    sql: ${TABLE}.nome_cliente ;;
  }

  dimension: notificacao_ativada {
    type: yesno
    sql: ${TABLE}.notificacao_ativada ;;
  }

  dimension: perfil_completo {
    type: yesno
    sql: ${TABLE}.perfil_completo ;;
  }

  dimension: telefone_cliente {
    type: string
    sql: ${TABLE}.telefone_cliente ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
