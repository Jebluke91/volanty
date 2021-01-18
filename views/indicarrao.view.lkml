view: indicarrao {
  sql_table_name: `volanty-production.views.Indicarrao`
    ;;

  dimension: __v {
    type: string
    sql: ${TABLE}.__v ;;
  }

  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }

  dimension_group: data_atualizacao {
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
    sql: ${TABLE}.data_atualizacao ;;
  }

  dimension_group: data_criacao {
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
    sql: ${TABLE}.data_criacao ;;
  }

  dimension: email_usuario {
    type: string
    sql: ${TABLE}.email_usuario ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }

  dimension: imagem {
    type: string
    sql: ${TABLE}.imagem ;;
  }

  dimension: lead {
    type: string
    sql: ${TABLE}.lead ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: nome_proprietario {
    type: string
    sql: ${TABLE}.nome_proprietario ;;
  }

  dimension: nome_usuario {
    type: string
    sql: ${TABLE}.nome_usuario ;;
  }

  dimension: origin_id {
    type: string
    sql: ${TABLE}.originId ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.Placa ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: telefone_proprietario {
    type: string
    sql: ${TABLE}.telefone_proprietario ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.userId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
