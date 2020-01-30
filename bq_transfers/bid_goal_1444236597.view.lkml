view: bid_goal_1444236597 {
  sql_table_name: bq_transfers.BidGoal_1444236597 ;;

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

  dimension: bid_strategy_id {
    type: number
    sql: ${TABLE}.BidStrategyID ;;
  }

  dimension: external_customer_id {
    type: number
    sql: ${TABLE}.ExternalCustomerId ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: page_one_promoted_bid_ceiling {
    type: number
    sql: ${TABLE}.PageOnePromotedBidCeiling ;;
  }

  dimension: page_one_promoted_bid_changes_for_raises_only_str {
    type: string
    sql: ${TABLE}.PageOnePromotedBidChangesForRaisesOnlyStr ;;
  }

  dimension: page_one_promoted_bid_modifier {
    type: number
    sql: ${TABLE}.PageOnePromotedBidModifier ;;
  }

  dimension: page_one_promoted_raise_bid_when_budget_constrained_str {
    type: string
    sql: ${TABLE}.PageOnePromotedRaiseBidWhenBudgetConstrainedStr ;;
  }

  dimension: page_one_promoted_raise_bid_when_low_quality_score_str {
    type: string
    sql: ${TABLE}.PageOnePromotedRaiseBidWhenLowQualityScoreStr ;;
  }

  dimension: page_one_promoted_strategy_goal {
    type: string
    sql: ${TABLE}.PageOnePromotedStrategyGoal ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: target_cpa {
    type: number
    sql: ${TABLE}.TargetCpa ;;
  }

  dimension: target_cpa_max_cpc_bid_ceiling {
    type: number
    sql: ${TABLE}.TargetCpaMaxCpcBidCeiling ;;
  }

  dimension: target_cpa_max_cpc_bid_floor {
    type: number
    sql: ${TABLE}.TargetCpaMaxCpcBidFloor ;;
  }

  dimension: target_outrank_share_bid_changes_for_raises_only_str {
    type: string
    sql: ${TABLE}.TargetOutrankShareBidChangesForRaisesOnlyStr ;;
  }

  dimension: target_outrank_share_competitor_domain {
    type: string
    sql: ${TABLE}.TargetOutrankShareCompetitorDomain ;;
  }

  dimension: target_outrank_share_flt {
    type: number
    sql: ${TABLE}.TargetOutrankShareFlt ;;
  }

  dimension: target_outrank_share_max_cpc_bid_ceiling {
    type: number
    sql: ${TABLE}.TargetOutrankShareMaxCpcBidCeiling ;;
  }

  dimension: target_outrank_share_raise_bid_when_low_quality_score_str {
    type: string
    sql: ${TABLE}.TargetOutrankShareRaiseBidWhenLowQualityScoreStr ;;
  }

  dimension: target_roas {
    type: number
    sql: ${TABLE}.TargetRoas ;;
  }

  dimension: target_roas_bid_ceiling {
    type: number
    sql: ${TABLE}.TargetRoasBidCeiling ;;
  }

  dimension: target_roas_bid_floor {
    type: number
    sql: ${TABLE}.TargetRoasBidFloor ;;
  }

  dimension: target_spend_bid_ceiling {
    type: number
    sql: ${TABLE}.TargetSpendBidCeiling ;;
  }

  dimension: target_spend_spend_target {
    type: number
    sql: ${TABLE}.TargetSpendSpendTarget ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    type: count
    drill_fields: [name, account_descriptive_name]
  }
}
