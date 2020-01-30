view: geo_conversion_stats_1444236597 {
  sql_table_name: bq_transfers.GeoConversionStats_1444236597 ;;

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

  dimension: ad_format {
    type: string
    sql: ${TABLE}.AdFormat ;;
  }

  dimension: ad_group_id {
    type: number
    sql: ${TABLE}.AdGroupId ;;
  }

  dimension: ad_group_name {
    type: string
    sql: ${TABLE}.AdGroupName ;;
  }

  dimension: ad_group_status {
    type: string
    sql: ${TABLE}.AdGroupStatus ;;
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

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.CampaignId ;;
  }

  dimension: city_criteria_id {
    type: number
    sql: ${TABLE}.CityCriteriaId ;;
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

  dimension: country_criteria_id {
    type: number
    sql: ${TABLE}.CountryCriteriaId ;;
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

  dimension: is_targeting_location {
    type: yesno
    sql: ${TABLE}.IsTargetingLocation ;;
  }

  dimension: location_type {
    type: string
    sql: ${TABLE}.LocationType ;;
  }

  dimension: metro_criteria_id {
    type: number
    sql: ${TABLE}.MetroCriteriaId ;;
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

  dimension: most_specific_criteria_id {
    type: number
    sql: ${TABLE}.MostSpecificCriteriaId ;;
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

  dimension: region_criteria_id {
    type: number
    sql: ${TABLE}.RegionCriteriaId ;;
  }

  dimension: value_per_all_conversion {
    type: number
    sql: ${TABLE}.ValuePerAllConversion ;;
  }

  dimension: value_per_conversion {
    type: number
    sql: ${TABLE}.ValuePerConversion ;;
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
    drill_fields: [conversion_type_name, ad_group_name, conversion_category_name]
  }
}
