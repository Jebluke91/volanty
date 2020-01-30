view: paid_organic_stats_1444236597 {
  sql_table_name: bq_transfers.PaidOrganicStats_1444236597 ;;

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

  dimension: average_cpc {
    type: number
    sql: ${TABLE}.AverageCpc ;;
  }

  dimension: average_position {
    type: number
    sql: ${TABLE}.AveragePosition ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.CampaignId ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.Clicks ;;
  }

  dimension: combined_ads_organic_clicks {
    type: number
    sql: ${TABLE}.CombinedAdsOrganicClicks ;;
  }

  dimension: combined_ads_organic_clicks_per_query {
    type: number
    sql: ${TABLE}.CombinedAdsOrganicClicksPerQuery ;;
  }

  dimension: combined_ads_organic_queries {
    type: number
    sql: ${TABLE}.CombinedAdsOrganicQueries ;;
  }

  dimension: criterion_id {
    type: number
    sql: ${TABLE}.CriterionId ;;
  }

  dimension: ctr {
    type: number
    sql: ${TABLE}.Ctr ;;
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

  dimension: external_customer_id {
    type: number
    sql: ${TABLE}.ExternalCustomerId ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.Impressions ;;
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

  dimension: organic_average_position {
    type: number
    sql: ${TABLE}.OrganicAveragePosition ;;
  }

  dimension: organic_clicks {
    type: number
    sql: ${TABLE}.OrganicClicks ;;
  }

  dimension: organic_clicks_per_query {
    type: number
    sql: ${TABLE}.OrganicClicksPerQuery ;;
  }

  dimension: organic_impressions {
    type: number
    sql: ${TABLE}.OrganicImpressions ;;
  }

  dimension: organic_impressions_per_query {
    type: number
    sql: ${TABLE}.OrganicImpressionsPerQuery ;;
  }

  dimension: organic_queries {
    type: number
    sql: ${TABLE}.OrganicQueries ;;
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

  dimension: query_match_type {
    type: string
    sql: ${TABLE}.QueryMatchType ;;
  }

  dimension: search_query {
    type: string
    sql: ${TABLE}.SearchQuery ;;
  }

  dimension: serp_type {
    type: string
    sql: ${TABLE}.SerpType ;;
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
