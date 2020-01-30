view: campaign_cookie_stats_1444236597 {
  sql_table_name: bq_transfers.CampaignCookieStats_1444236597 ;;

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

  dimension: absolute_top_impression_percentage {
    type: string
    sql: ${TABLE}.AbsoluteTopImpressionPercentage ;;
  }

  dimension: ad_network_type1 {
    type: string
    sql: ${TABLE}.AdNetworkType1 ;;
  }

  dimension: ad_network_type2 {
    type: string
    sql: ${TABLE}.AdNetworkType2 ;;
  }

  dimension: average_frequency {
    type: number
    sql: ${TABLE}.AverageFrequency ;;
  }

  dimension: base_campaign_id {
    type: number
    sql: ${TABLE}.BaseCampaignId ;;
  }

  dimension: campaign_group_id {
    type: number
    sql: ${TABLE}.CampaignGroupId ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.CampaignId ;;
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

  dimension: external_customer_id {
    type: number
    sql: ${TABLE}.ExternalCustomerId ;;
  }

  dimension: impression_reach {
    type: string
    sql: ${TABLE}.ImpressionReach ;;
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

  dimension: search_budget_lost_absolute_top_impression_share {
    type: string
    sql: ${TABLE}.SearchBudgetLostAbsoluteTopImpressionShare ;;
  }

  dimension: search_budget_lost_top_impression_share {
    type: string
    sql: ${TABLE}.SearchBudgetLostTopImpressionShare ;;
  }

  dimension: search_rank_lost_absolute_top_impression_share {
    type: string
    sql: ${TABLE}.SearchRankLostAbsoluteTopImpressionShare ;;
  }

  dimension: search_rank_lost_top_impression_share {
    type: string
    sql: ${TABLE}.SearchRankLostTopImpressionShare ;;
  }

  dimension: search_top_impression_share {
    type: string
    sql: ${TABLE}.SearchTopImpressionShare ;;
  }

  dimension: top_impression_percentage {
    type: string
    sql: ${TABLE}.TopImpressionPercentage ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
