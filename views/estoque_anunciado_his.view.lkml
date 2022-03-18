view: estoque_anunciado_his {
  sql_table_name: `volanty-production.views.Estoque_Anunciado_His`
    ;;

  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
  }

  dimension: color {
    type: string
    sql: ${TABLE}.color ;;
  }

  dimension: creation_date {
    type: string
    sql: ${TABLE}.creationDate ;;
  }

  dimension_group: data_vendido {
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
    sql: ${TABLE}.data_vendido ;;
  }

  dimension: km {
    type: string
    sql: ${TABLE}.km ;;
  }

  dimension: manufacture_year {
    type: string
    sql: ${TABLE}.manufactureYear ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: nova_placa {
    type: string
    sql: ${TABLE}.nova_placa ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: status_vendas {
    type: string
    sql: ${TABLE}.status_vendas ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
