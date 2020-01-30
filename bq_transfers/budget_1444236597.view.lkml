view: budget_1444236597 {
  sql_table_name: bq_transfers.Budget_1444236597 ;;

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

  dimension: amount {
    type: number
    sql: ${TABLE}.Amount ;;
  }

  dimension: budget_id {
    type: number
    sql: ${TABLE}.BudgetId ;;
  }

  dimension: budget_name {
    type: string
    sql: ${TABLE}.BudgetName ;;
  }

  dimension: budget_reference_count {
    type: number
    sql: ${TABLE}.BudgetReferenceCount ;;
  }

  dimension: budget_status {
    type: string
    sql: ${TABLE}.BudgetStatus ;;
  }

  dimension: delivery_method {
    type: string
    sql: ${TABLE}.DeliveryMethod ;;
  }

  dimension: external_customer_id {
    type: number
    sql: ${TABLE}.ExternalCustomerId ;;
  }

  dimension: has_recommended_budget {
    type: yesno
    sql: ${TABLE}.HasRecommendedBudget ;;
  }

  dimension: is_budget_explicitly_shared {
    type: yesno
    sql: ${TABLE}.IsBudgetExplicitlyShared ;;
  }

  dimension: period {
    type: string
    sql: ${TABLE}.Period ;;
  }

  dimension: recommended_budget_amount {
    type: string
    sql: ${TABLE}.RecommendedBudgetAmount ;;
  }

  dimension: total_amount {
    type: string
    sql: ${TABLE}.TotalAmount ;;
  }

  measure: count {
    type: count
    drill_fields: [account_descriptive_name, budget_name]
  }
}
