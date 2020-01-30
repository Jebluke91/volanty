view: bid_goal_conversion_stats_1444236597 {
  sql_table_name: bq_transfers.BidGoalConversionStats_1444236597 ;;

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

  dimension: ad_group_count {
    type: number
    sql: ${TABLE}.AdGroupCount ;;
  }

  dimension: ad_group_criteria_count {
    type: number
    sql: ${TABLE}.AdGroupCriteriaCount ;;
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

  dimension: bid_strategy_id {
    type: number
    sql: ${TABLE}.BidStrategyID ;;
  }

  dimension: campaign_count {
    type: number
    sql: ${TABLE}.CampaignCount ;;
  }

  dimension: conversion_category_name {
    type: string
    sql: ${TABLE}.ConversionCategoryName ;;
  }

  dimension: conversion_rate {
    type: number
    sql: ${TABLE}.ConversionRate ;;
  }

  dimension: conversion_tracker_id {
    type: number
    sql: ${TABLE}.ConversionTrackerId ;;
  }

  dimension: conversion_type_name {
    type: string
    sql: ${TABLE}.ConversionTypeName ;;
  }

  dimension: conversion_value {
    type: number
    sql: ${TABLE}.ConversionValue ;;
  }

  dimension: conversions {
    type: number
    sql: ${TABLE}.Conversions ;;
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

  dimension: external_customer_id {
    type: number
    sql: ${TABLE}.ExternalCustomerId ;;
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

  dimension: non_removed_ad_group_count {
    type: number
    sql: ${TABLE}.NonRemovedAdGroupCount ;;
  }

  dimension: non_removed_ad_group_criteria_count {
    type: number
    sql: ${TABLE}.NonRemovedAdGroupCriteriaCount ;;
  }

  dimension: non_removed_campaign_count {
    type: number
    sql: ${TABLE}.NonRemovedCampaignCount ;;
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

  dimension: value_per_all_conversion {
    type: number
    sql: ${TABLE}.ValuePerAllConversion ;;
  }

  dimension: view_through_conversions {
    type: number
    sql: ${TABLE}.ViewThroughConversions ;;
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
    drill_fields: [conversion_type_name, conversion_category_name]
  }
}
