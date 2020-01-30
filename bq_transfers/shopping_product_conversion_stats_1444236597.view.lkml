view: shopping_product_conversion_stats_1444236597 {
  sql_table_name: bq_transfers.ShoppingProductConversionStats_1444236597 ;;

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

  dimension: ad_group_id {
    type: number
    sql: ${TABLE}.AdGroupId ;;
  }

  dimension: ad_network_type1 {
    type: string
    sql: ${TABLE}.AdNetworkType1 ;;
  }

  dimension: ad_network_type2 {
    type: string
    sql: ${TABLE}.AdNetworkType2 ;;
  }

  dimension: aggregator_id {
    type: number
    sql: ${TABLE}.AggregatorId ;;
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

  dimension: brand {
    type: string
    sql: ${TABLE}.Brand ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.CampaignId ;;
  }

  dimension: category_l1 {
    type: string
    sql: ${TABLE}.CategoryL1 ;;
  }

  dimension: category_l2 {
    type: string
    sql: ${TABLE}.CategoryL2 ;;
  }

  dimension: category_l3 {
    type: string
    sql: ${TABLE}.CategoryL3 ;;
  }

  dimension: category_l4 {
    type: string
    sql: ${TABLE}.CategoryL4 ;;
  }

  dimension: category_l5 {
    type: string
    sql: ${TABLE}.CategoryL5 ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.Channel ;;
  }

  dimension: channel_exclusivity {
    type: string
    sql: ${TABLE}.ChannelExclusivity ;;
  }

  dimension: click_type {
    type: string
    sql: ${TABLE}.ClickType ;;
  }

  dimension: conversion_category_name {
    type: string
    sql: ${TABLE}.ConversionCategoryName ;;
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

  dimension: cost_per_all_conversion {
    type: number
    sql: ${TABLE}.CostPerAllConversion ;;
  }

  dimension: country_criteria_id {
    type: number
    sql: ${TABLE}.CountryCriteriaId ;;
  }

  dimension: custom_attribute0 {
    type: string
    sql: ${TABLE}.CustomAttribute0 ;;
  }

  dimension: custom_attribute1 {
    type: string
    sql: ${TABLE}.CustomAttribute1 ;;
  }

  dimension: custom_attribute2 {
    type: string
    sql: ${TABLE}.CustomAttribute2 ;;
  }

  dimension: custom_attribute3 {
    type: string
    sql: ${TABLE}.CustomAttribute3 ;;
  }

  dimension: custom_attribute4 {
    type: string
    sql: ${TABLE}.CustomAttribute4 ;;
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

  dimension: language_criteria_id {
    type: string
    sql: ${TABLE}.LanguageCriteriaId ;;
  }

  dimension: merchant_id {
    type: number
    sql: ${TABLE}.MerchantId ;;
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

  dimension: offer_id {
    type: string
    sql: ${TABLE}.OfferId ;;
  }

  dimension: product_condition {
    type: string
    sql: ${TABLE}.ProductCondition ;;
  }

  dimension: product_type_l1 {
    type: string
    sql: ${TABLE}.ProductTypeL1 ;;
  }

  dimension: product_type_l2 {
    type: string
    sql: ${TABLE}.ProductTypeL2 ;;
  }

  dimension: product_type_l3 {
    type: string
    sql: ${TABLE}.ProductTypeL3 ;;
  }

  dimension: product_type_l4 {
    type: string
    sql: ${TABLE}.ProductTypeL4 ;;
  }

  dimension: product_type_l5 {
    type: string
    sql: ${TABLE}.ProductTypeL5 ;;
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

  dimension: store_id {
    type: string
    sql: ${TABLE}.StoreId ;;
  }

  dimension: value_per_all_conversion {
    type: number
    sql: ${TABLE}.ValuePerAllConversion ;;
  }

  dimension: value_per_conversion {
    type: number
    sql: ${TABLE}.ValuePerConversion ;;
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
    drill_fields: [conversion_category_name, conversion_type_name]
  }
}
