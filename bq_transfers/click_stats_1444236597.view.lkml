view: click_stats_1444236597 {
  sql_table_name: bq_transfers.ClickStats_1444236597 ;;

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

  dimension: account_descriptive_name {
    type: string
    sql: ${TABLE}.AccountDescriptiveName ;;
  }

  dimension: ad_format {
    type: string
    sql: ${TABLE}.AdFormat ;;
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

  dimension: aoi_city_criteria_id {
    type: number
    sql: ${TABLE}.AoiCityCriteriaId ;;
  }

  dimension: aoi_country_criteria_id {
    type: number
    sql: ${TABLE}.AoiCountryCriteriaId ;;
  }

  dimension: aoi_metro_criteria_id {
    type: number
    sql: ${TABLE}.AoiMetroCriteriaId ;;
  }

  dimension: aoi_most_specific_target_id {
    type: number
    sql: ${TABLE}.AoiMostSpecificTargetId ;;
  }

  dimension: aoi_region_criteria_id {
    type: number
    sql: ${TABLE}.AoiRegionCriteriaId ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.CampaignId ;;
  }

  dimension: campaign_location_target_id {
    type: number
    sql: ${TABLE}.CampaignLocationTargetId ;;
  }

  dimension: click_type {
    type: string
    sql: ${TABLE}.ClickType ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.Clicks ;;
  }

  dimension: creative_id {
    type: number
    sql: ${TABLE}.CreativeId ;;
  }

  dimension: criteria_id {
    type: number
    sql: ${TABLE}.CriteriaId ;;
  }

  dimension: criteria_parameters {
    type: string
    sql: ${TABLE}.CriteriaParameters ;;
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

  dimension: device {
    type: string
    sql: ${TABLE}.Device ;;
  }

  dimension: external_customer_id {
    type: number
    sql: ${TABLE}.ExternalCustomerId ;;
  }

  dimension: gcl_id {
    type: string
    sql: ${TABLE}.GclId ;;
  }

  dimension: keyword_match_type {
    type: string
    sql: ${TABLE}.KeywordMatchType ;;
  }

  dimension: lop_city_criteria_id {
    type: number
    sql: ${TABLE}.LopCityCriteriaId ;;
  }

  dimension: lop_country_criteria_id {
    type: number
    sql: ${TABLE}.LopCountryCriteriaId ;;
  }

  dimension: lop_metro_criteria_id {
    type: number
    sql: ${TABLE}.LopMetroCriteriaId ;;
  }

  dimension: lop_most_specific_target_id {
    type: number
    sql: ${TABLE}.LopMostSpecificTargetId ;;
  }

  dimension: lop_region_criteria_id {
    type: number
    sql: ${TABLE}.LopRegionCriteriaId ;;
  }

  dimension: month_of_year {
    type: string
    sql: ${TABLE}.MonthOfYear ;;
  }

  dimension: page {
    type: number
    sql: ${TABLE}.Page ;;
  }

  dimension: slot {
    type: string
    sql: ${TABLE}.Slot ;;
  }

  dimension: user_list_id {
    type: number
    sql: ${TABLE}.UserListId ;;
  }

  measure: count {
    type: count
    drill_fields: [account_descriptive_name]
  }
}
