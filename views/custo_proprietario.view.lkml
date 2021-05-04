view: custo_proprietario {
  sql_table_name: `volanty-production.spreedsheets_data.Custo_Proprietario`
    ;;

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.Campaign_name ;;
  }

  dimension: canal {
    type: string
    sql: ${TABLE}.Canal ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.Cost ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  measure: count {
    type: count
    drill_fields: [campaign_name]
  }
}
