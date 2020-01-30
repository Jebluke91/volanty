view: campaign_cross_device_stats_1444236597 {
  sql_table_name: bq_transfers.CampaignCrossDeviceStats_1444236597 ;;

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

  dimension: average_pageviews {
    type: number
    sql: ${TABLE}.AveragePageviews ;;
  }

  dimension: average_time_on_site {
    type: number
    sql: ${TABLE}.AverageTimeOnSite ;;
  }

  dimension: base_campaign_id {
    type: number
    sql: ${TABLE}.BaseCampaignId ;;
  }

  dimension: bounce_rate {
    type: number
    sql: ${TABLE}.BounceRate ;;
  }

  dimension: campaign_group_id {
    type: number
    sql: ${TABLE}.CampaignGroupId ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.CampaignId ;;
  }

  dimension: click_assisted_conversion_value {
    type: number
    sql: ${TABLE}.ClickAssistedConversionValue ;;
  }

  dimension: click_assisted_conversions {
    type: number
    sql: ${TABLE}.ClickAssistedConversions ;;
  }

  dimension: click_assisted_conversions_over_last_click_conversions {
    type: number
    sql: ${TABLE}.ClickAssistedConversionsOverLastClickConversions ;;
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

  dimension: impression_assisted_conversion_value {
    type: number
    sql: ${TABLE}.ImpressionAssistedConversionValue ;;
  }

  dimension: impression_assisted_conversions {
    type: number
    sql: ${TABLE}.ImpressionAssistedConversions ;;
  }

  dimension: impression_assisted_conversions_over_last_click_conversions {
    type: number
    sql: ${TABLE}.ImpressionAssistedConversionsOverLastClickConversions ;;
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

  dimension: num_offline_impressions {
    type: number
    sql: ${TABLE}.NumOfflineImpressions ;;
  }

  dimension: num_offline_interactions {
    type: number
    sql: ${TABLE}.NumOfflineInteractions ;;
  }

  dimension: offline_interaction_rate {
    type: number
    sql: ${TABLE}.OfflineInteractionRate ;;
  }

  dimension: percent_new_visitors {
    type: number
    sql: ${TABLE}.PercentNewVisitors ;;
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

  dimension: relative_ctr {
    type: string
    sql: ${TABLE}.RelativeCtr ;;
  }

  dimension: search_absolute_top_impression_share {
    type: string
    sql: ${TABLE}.SearchAbsoluteTopImpressionShare ;;
  }

  dimension: search_budget_lost_absolute_top_impression_share {
    type: string
    sql: ${TABLE}.SearchBudgetLostAbsoluteTopImpressionShare ;;
  }

  dimension: search_budget_lost_impression_share {
    type: string
    sql: ${TABLE}.SearchBudgetLostImpressionShare ;;
  }

  dimension: search_budget_lost_top_impression_share {
    type: string
    sql: ${TABLE}.SearchBudgetLostTopImpressionShare ;;
  }

  dimension: search_click_share {
    type: string
    sql: ${TABLE}.SearchClickShare ;;
  }

  dimension: search_exact_match_impression_share {
    type: string
    sql: ${TABLE}.SearchExactMatchImpressionShare ;;
  }

  dimension: search_impression_share {
    type: string
    sql: ${TABLE}.SearchImpressionShare ;;
  }

  dimension: search_rank_lost_absolute_top_impression_share {
    type: string
    sql: ${TABLE}.SearchRankLostAbsoluteTopImpressionShare ;;
  }

  dimension: search_rank_lost_impression_share {
    type: string
    sql: ${TABLE}.SearchRankLostImpressionShare ;;
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

  dimension: value_per_all_conversion {
    type: number
    sql: ${TABLE}.ValuePerAllConversion ;;
  }

  dimension: video_quartile100_rate {
    type: number
    sql: ${TABLE}.VideoQuartile100Rate ;;
  }

  dimension: video_quartile25_rate {
    type: number
    sql: ${TABLE}.VideoQuartile25Rate ;;
  }

  dimension: video_quartile50_rate {
    type: number
    sql: ${TABLE}.VideoQuartile50Rate ;;
  }

  dimension: video_quartile75_rate {
    type: number
    sql: ${TABLE}.VideoQuartile75Rate ;;
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
