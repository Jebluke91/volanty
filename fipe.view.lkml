view: fipe {
  sql_table_name: datalake.Fipe ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: brand_id {
    type: number
    sql: ${TABLE}.brandId ;;
  }

  dimension: brand_name {
    type: string
    sql: ${TABLE}.brandName ;;
  }

  dimension: model_id {
    type: number
    sql: ${TABLE}.modelId ;;
  }

  dimension: model_name {
    type: string
    sql: ${TABLE}.modelName ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension_group: update {
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

  dimension: version_id {
    type: number
    sql: ${TABLE}.versionId ;;
  }

  dimension: version_name {
    type: string
    sql: ${TABLE}.versionName ;;
  }

  measure: count {
    type: count
    drill_fields: [id, model_name, brand_name, version_name]
  }
}
