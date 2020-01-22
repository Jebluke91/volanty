view: version_to_body_style {
  sql_table_name: views.VersionToBodyStyle ;;

  dimension: body_style {
    type: string
    sql: ${TABLE}.bodyStyle ;;
  }

  dimension: f0_ {
    type: number
    sql: ${TABLE}.f0_ ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
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
