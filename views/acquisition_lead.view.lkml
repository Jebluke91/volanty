view: acquisition_lead {
  sql_table_name: `volanty-production.describe.AcquisitionLead`
    ;;

  dimension: column_name {
    type: string
    sql: ${TABLE}.column_name ;;
  }

  dimension: count_acquisition_lead {
    type: number
    sql: ${TABLE}.count ;;
  }

  measure: count_acquisition_lead_ {
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: max {
    type: number
    sql: ${TABLE}.max ;;
  }
  measure: max_ {
    type: number
    sql: ${TABLE}.max ;;
  }

  dimension: mean {
    type: number
    sql: ${TABLE}.mean ;;
  }

  measure: mean_ {
    type: number
    sql: ${TABLE}.mean ;;
  }

  dimension: media_movel_30_dias {
    type: number
    sql: ${TABLE}.media_movel_30_dias ;;
  }
  measure: media_movel_30_dias_ {
    type: sum
    sql: ${TABLE}.media_movel_30_dias ;;
  }



  dimension: media_movel_60_dias {
    type: number
    sql: ${TABLE}.media_movel_60_dias ;;
  }

  measure: media_movel_60_dias_ {
    type: sum
    sql: ${TABLE}.media_movel_60_dias ;;
  }

  dimension: media_movel_90_dias {
    type: number
    sql: ${TABLE}.media_movel_90_dias ;;
  }

  measure: media_movel_90_dias_ {
    type: sum
    sql: ${TABLE}.media_movel_90_dias ;;
  }

  dimension: median {
    type: number
    sql: ${TABLE}.median ;;
  }

  measure: median_ {
    type: number
    sql: ${TABLE}.median ;;
  }
  dimension: min {
    type: number
    sql: ${TABLE}.min ;;
  }

  measure: min_ {
    type: number
    sql: ${TABLE}.min ;;
  }

  dimension: moda {
    type: number
    sql: ${TABLE}.moda ;;
  }

  measure: moda_ {
    type: number
    sql: ${TABLE}.moda ;;
  }

  dimension: q1 {
    type: number
    sql: ${TABLE}.q1 ;;
  }
  measure: q1_ {
    type: number
    sql: ${TABLE}.q1 ;;
  }

  dimension: q3 {
    type: number
    sql: ${TABLE}.q3 ;;
  }
  measure: q3_ {
    type: number
    sql: ${TABLE}.q3 ;;
  }

  dimension: std {
    type: number
    sql: ${TABLE}.Std ;;
  }

  measure: std_ {
    type: number
    sql: ${TABLE}.Std ;;
  }

  measure: count {
    type: count
    drill_fields: [column_name]
  }
}
