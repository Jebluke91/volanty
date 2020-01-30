view: account_non_click_stats_1444236597 {
  sql_table_name: bq_transfers.AccountNonClickStats_1444236597 ;;

  dimension_group: _data {
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
    sql: ${TABLE}._DATA_DATE ;;
  }

  dimension_group: _latest {
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
    sql: ${TABLE}._LATEST_DATE ;;
  }

  dimension: ad_network_type1 {
    type: string
    sql: ${TABLE}.AdNetworkType1 ;;
  }

  dimension: ad_network_type2 {
    type: string
    sql: ${TABLE}.AdNetworkType2 ;;
  }

  dimension: all_conversion_rate {
    type: number
    sql: ${TABLE}.AllConversionRate ;;
  }

  dimension: all_conversion_value {
    type: number
    sql: ${TABLE}.AllConversionValue ;;
  }

  dimension: all_conversions {
    type: number
    sql: ${TABLE}.AllConversions ;;
  }

  dimension: average_cpe {
    type: number
    sql: ${TABLE}.AverageCpe ;;
  }

  dimension: average_cpv {
    type: number
    sql: ${TABLE}.AverageCpv ;;
  }

  dimension: content_budget_lost_impression_share {
    type: string
    sql: ${TABLE}.ContentBudgetLostImpressionShare ;;
  }

  dimension: content_impression_share {
    type: string
    sql: ${TABLE}.ContentImpressionShare ;;
  }

  dimension: content_rank_lost_impression_share {
    type: string
    sql: ${TABLE}.ContentRankLostImpressionShare ;;
  }

  dimension: cost_per_all_conversion {
    type: number
    sql: ${TABLE}.CostPerAllConversion ;;
  }

  dimension: cross_device_conversions {
    type: number
    sql: ${TABLE}.CrossDeviceConversions ;;
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
    sql: ${TABLE}.Date ;;
  }

  dimension: day_of_week {
    type: string
    sql: ${TABLE}.DayOfWeek ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}.Device ;;
  }

  dimension: engagement_rate {
    type: number
    sql: ${TABLE}.EngagementRate ;;
  }

  dimension: engagements {
    type: number
    sql: ${TABLE}.Engagements ;;
  }

  dimension: external_customer_id {
    type: number
    sql: ${TABLE}.ExternalCustomerId ;;
  }

  dimension: invalid_click_rate {
    type: number
    sql: ${TABLE}.InvalidClickRate ;;
  }

  dimension: invalid_clicks {
    type: number
    sql: ${TABLE}.InvalidClicks ;;
  }

  dimension_group: month {
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
    sql: ${TABLE}.Month ;;
  }

  dimension: month_of_year {
    type: string
    sql: ${TABLE}.MonthOfYear ;;
  }

  dimension_group: quarter {
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
    sql: ${TABLE}.Quarter ;;
  }

  dimension: search_budget_lost_impression_share {
    type: string
    sql: ${TABLE}.SearchBudgetLostImpressionShare ;;
  }

  dimension: search_exact_match_impression_share {
    type: string
    sql: ${TABLE}.SearchExactMatchImpressionShare ;;
  }

  dimension: search_impression_share {
    type: string
    sql: ${TABLE}.SearchImpressionShare ;;
  }

  dimension: search_rank_lost_impression_share {
    type: string
    sql: ${TABLE}.SearchRankLostImpressionShare ;;
  }

  dimension: value_per_all_conversion {
    type: number
    sql: ${TABLE}.ValuePerAllConversion ;;
  }

  dimension: video_view_rate {
    type: number
    sql: ${TABLE}.VideoViewRate ;;
  }

  dimension: video_views {
    type: number
    sql: ${TABLE}.VideoViews ;;
  }

  dimension_group: week {
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
    sql: ${TABLE}.Week ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
