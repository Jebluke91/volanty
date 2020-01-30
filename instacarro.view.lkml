view: instacarro {
  sql_table_name: datalake.Instacarro ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}.createdAt ;;
  }

  dimension: fipe {
    type: number
    sql: ${TABLE}.fipe ;;
  }

  dimension: instacarro_max_price {
    type: number
    sql: ${TABLE}.instacarro_max_price ;;
  }

  dimension: instacarro_min_price {
    type: number
    sql: ${TABLE}.instacarro_min_price ;;
  }

  dimension: km {
    type: number
    sql: ${TABLE}.km ;;
  }

  dimension: lojas_max_price {
    type: number
    sql: ${TABLE}.lojas_max_price ;;
  }

  dimension: lojas_min_price {
    type: number
    sql: ${TABLE}.lojas_min_price ;;
  }

  dimension: make {
    type: string
    sql: ${TABLE}.make ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: particular_max_price {
    type: number
    sql: ${TABLE}.particular_max_price ;;
  }

  dimension: particular_min_price {
    type: number
    sql: ${TABLE}.particular_min_price ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
