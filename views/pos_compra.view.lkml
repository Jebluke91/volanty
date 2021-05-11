view: pos_compra {
  sql_table_name: `volanty-production.views.Pos_Compra`
    ;;

  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }

  dimension: avarias_avaliacao {
    type: number
    sql: ${TABLE}.avarias_avaliacao ;;
  }

  dimension: avarias_reavaliacao {
    type: number
    sql: ${TABLE}.avarias_reavaliacao ;;
  }

  dimension: avarias_oficina {
    type: number
    sql: ${TABLE}.avarias_oficina ;;
  }

  dimension: board_value {
    type: string
    sql: ${TABLE}.Board_Value ;;
  }

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
  }







    dimension_group: update_date {
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
      sql: ${TABLE}.updateDate ;;
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

  dimension: km {
    type: string
    sql: ${TABLE}.km ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: ano_modelo {
    type: string
    sql: ${TABLE}.ano_modelo ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }



  dimension: dias_entre_compra_ordem {
    type: number
    sql: ${TABLE}.dias_entre_compra_ordem ;;
  }


  dimension: dias_em_servico {
    type: number
    sql: ${TABLE}.dias_em_servico ;;
  }


  dimension: preco {
    type: number
    sql: ${TABLE}.preco ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: stock_id {
    type: string
    sql: ${TABLE}.stock_id ;;
  }

  dimension: stock_type {
    type: string
    sql: ${TABLE}.stock_type ;;
  }

  dimension: uf {
    type: string
    sql: ${TABLE}.UF ;;
  }


  dimension: usuario {
    type: string
    sql: ${TABLE}.usuario ;;
  }

  dimension: value_type {
    type: string
    sql: ${TABLE}.Value_Type ;;
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
