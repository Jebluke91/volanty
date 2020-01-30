view: budget_stats_1444236597 {
  sql_table_name: bq_transfers.BudgetStats_1444236597 ;;

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

  dimension: associated_campaign_id {
    type: number
    sql: ${TABLE}.AssociatedCampaignId ;;
  }

  dimension: associated_campaign_name {
    type: string
    sql: ${TABLE}.AssociatedCampaignName ;;
  }

  dimension: associated_campaign_status {
    type: string
    sql: ${TABLE}.AssociatedCampaignStatus ;;
  }

  dimension: average_cost {
    type: number
    sql: ${TABLE}.AverageCost ;;
  }

  dimension: average_cpc {
    type: number
    sql: ${TABLE}.AverageCpc ;;
  }

  dimension: average_cpe {
    type: number
    sql: ${TABLE}.AverageCpe ;;
  }

  dimension: average_cpm {
    type: number
    sql: ${TABLE}.AverageCpm ;;
  }

  dimension: average_cpv {
    type: number
    sql: ${TABLE}.AverageCpv ;;
  }

  dimension: average_position {
    type: number
    sql: ${TABLE}.AveragePosition ;;
  }

  dimension: budget_campaign_association_status {
    type: string
    sql: ${TABLE}.BudgetCampaignAssociationStatus ;;
  }

  dimension: budget_id {
    type: number
    sql: ${TABLE}.BudgetId ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.Clicks ;;
  }

  dimension: conversion_rate {
    type: number
    sql: ${TABLE}.ConversionRate ;;
  }

  dimension: conversion_value {
    type: number
    sql: ${TABLE}.ConversionValue ;;
  }

  dimension: conversions {
    type: number
    sql: ${TABLE}.Conversions ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.Cost ;;
  }

  dimension: cost_per_all_conversion {
    type: number
    sql: ${TABLE}.CostPerAllConversion ;;
  }

  dimension: cost_per_conversion {
    type: number
    sql: ${TABLE}.CostPerConversion ;;
  }

  dimension: cross_device_conversions {
    type: number
    sql: ${TABLE}.CrossDeviceConversions ;;
  }

  dimension: ctr {
    type: number
    sql: ${TABLE}.Ctr ;;
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

  dimension: impressions {
    type: number
    sql: ${TABLE}.Impressions ;;
  }

  dimension: interaction_rate {
    type: number
    sql: ${TABLE}.InteractionRate ;;
  }

  dimension: interaction_types {
    type: string
    sql: ${TABLE}.InteractionTypes ;;
  }

  dimension: interactions {
    type: number
    sql: ${TABLE}.Interactions ;;
  }

  dimension: recommended_budget_estimated_change_in_weekly_clicks {
    type: number
    sql: ${TABLE}.RecommendedBudgetEstimatedChangeInWeeklyClicks ;;
  }

  dimension: recommended_budget_estimated_change_in_weekly_cost {
    type: string
    sql: ${TABLE}.RecommendedBudgetEstimatedChangeInWeeklyCost ;;
  }

  dimension: recommended_budget_estimated_change_in_weekly_interactions {
    type: number
    sql: ${TABLE}.RecommendedBudgetEstimatedChangeInWeeklyInteractions ;;
  }

  dimension: recommended_budget_estimated_change_in_weekly_views {
    type: number
    sql: ${TABLE}.RecommendedBudgetEstimatedChangeInWeeklyViews ;;
  }

  dimension: value_per_all_conversion {
    type: number
    sql: ${TABLE}.ValuePerAllConversion ;;
  }

  dimension: value_per_conversion {
    type: number
    sql: ${TABLE}.ValuePerConversion ;;
  }

  dimension: video_view_rate {
    type: number
    sql: ${TABLE}.VideoViewRate ;;
  }

  dimension: video_views {
    type: number
    sql: ${TABLE}.VideoViews ;;
  }

  dimension: view_through_conversions {
    type: number
    sql: ${TABLE}.ViewThroughConversions ;;
  }

  measure: count {
    type: count
    drill_fields: [associated_campaign_name]
  }
}
