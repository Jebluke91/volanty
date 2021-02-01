view: preleads {
  sql_table_name: `volanty-production.DW.PreLeads`
  ;;
  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }
  dimension: ownersPhone {
    type: string
    sql: ${TABLE}.ownersPhone ;;
  }
  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: leadStatus {
    type: string
    sql: ${TABLE}.leadStatus ;;
  }
  dimension: __v {
    type: string
    sql: ${TABLE}.__v ;;
  }
  dimension: originId {
    type: string
    sql: ${TABLE}.originId ;;
  }
  dimension: userEmail {
    type: string
    sql: ${TABLE}.userEmail ;;
  }
  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }
  dimension:  userId {
    type: string
    sql: ${TABLE}. userId ;;
  }

  dimension:  state {
    type: string
    sql: ${TABLE}. state ;;
  }
  dimension:  userName {
    type: string
    sql: ${TABLE}. userName ;;
  }
  dimension:  ownersName {
    type: string
    sql: ${TABLE}. ownersName ;;
  }
  dimension:  licensePlate {
    type: string
    sql: ${TABLE}. licensePlate ;;
  }

  dimension_group: updateDate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    }
  dimension_group: createDate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
  }
  dimension:  lead {
    type: string
    sql: ${TABLE}. lead ;;
  }

    measure: count {
      type: count
      drill_fields: []
    }
}
