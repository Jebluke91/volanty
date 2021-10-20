view: funil_vendas {
  sql_table_name: `volanty-production.views.Funil_Vendas`
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


  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }

  dimension: empresa {
    type: string
    sql: ${TABLE}.empresa ;;
  }

  dimension: etapa {
    type: string
    sql: ${TABLE}.etapa ;;
  }


  dimension: qtd {
    type: number
    sql: ${TABLE}.qtd ;;
  }


  dimension: referencia_cliente {
    type: string
    sql: ${TABLE}.referencia_cliente ;;
  }
  dimension: utmsource_cliente {
    type: string
    sql: ${TABLE}.utmsource_cliente ;;
  }

  dimension: utmcampaign_cliente {
    type: string
    sql: ${TABLE}.utmcampaign_cliente ;;
  }

  dimension: partner_cliente {
    type: string
    sql: ${TABLE}.partner_cliente ;;
  }

  dimension: origin_cliente {
    type: string
    sql: ${TABLE}.origin_cliente ;;
  }

}
