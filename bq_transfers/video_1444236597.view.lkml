view: video_1444236597 {
  sql_table_name: bq_transfers.Video_1444236597 ;;

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

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.CampaignId ;;
  }

  dimension: external_customer_id {
    type: number
    sql: ${TABLE}.ExternalCustomerId ;;
  }

  dimension: video_duration {
    type: number
    sql: ${TABLE}.VideoDuration ;;
  }

  dimension: video_id {
    type: string
    sql: ${TABLE}.VideoId ;;
  }

  dimension: video_title {
    type: string
    sql: ${TABLE}.VideoTitle ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
