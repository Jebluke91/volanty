view: internal_inspection {
  sql_table_name: datalake.InternalInspection ;;

  dimension: abs {
    type: yesno
    sql: ${TABLE}.abs ;;
  }

  dimension: air_conditioning_operation {
    type: yesno
    sql: ${TABLE}.airConditioningOperation ;;
  }

  dimension: air_conditioning_type {
    type: string
    sql: ${TABLE}.airConditioningType ;;
  }

  dimension: airbag {
    type: yesno
    sql: ${TABLE}.airbag ;;
  }

  dimension: inspection_key {
    type: number
    sql: ${TABLE}.inspectionKey ;;
  }

  dimension: obs_air_conditioning {
    type: string
    sql: ${TABLE}.obsAirConditioning ;;
  }

  dimension: obs_odor {
    type: string
    sql: ${TABLE}.obsOdor ;;
  }

  dimension: obs_panel_and_coating {
    type: string
    sql: ${TABLE}.obsPanelAndCoating ;;
  }

  dimension: obs_panel_lights {
    type: string
    sql: ${TABLE}.obsPanelLights ;;
  }

  dimension: obs_power_door_lock {
    type: string
    sql: ${TABLE}.obsPowerDoorLock ;;
  }

  dimension: obs_power_windows {
    type: string
    sql: ${TABLE}.obsPowerWindows ;;
  }

  dimension: obs_steering_wheel {
    type: string
    sql: ${TABLE}.obsSteeringWheel ;;
  }

  dimension: obs_stew_conservation {
    type: string
    sql: ${TABLE}.obsStewConservation ;;
  }

  dimension: odor {
    type: yesno
    sql: ${TABLE}.odor ;;
  }

  dimension: panel_and_coating_conservation {
    type: string
    sql: ${TABLE}.panelAndCoatingConservation ;;
  }

  dimension: panel_lights_abs {
    type: yesno
    sql: ${TABLE}.panelLightsABS ;;
  }

  dimension: panel_lights_airbag {
    type: yesno
    sql: ${TABLE}.panelLightsAirbag ;;
  }

  dimension: panel_lights_alternator {
    type: yesno
    sql: ${TABLE}.panelLightsAlternator ;;
  }

  dimension: panel_lights_electronic_injection_on {
    type: yesno
    sql: ${TABLE}.panelLightsElectronicInjectionOn ;;
  }

  dimension: panel_lights_engine_on {
    type: yesno
    sql: ${TABLE}.panelLightsEngineOn ;;
  }

  dimension: panel_lights_oil {
    type: yesno
    sql: ${TABLE}.panelLightsOil ;;
  }

  dimension: power_door_lock {
    type: yesno
    sql: ${TABLE}.powerDoorLock ;;
  }

  dimension: power_windows_operation {
    type: yesno
    sql: ${TABLE}.powerWindowsOperation ;;
  }

  dimension: power_windows_type {
    type: string
    sql: ${TABLE}.powerWindowsType ;;
  }

  dimension: steering_wheel_type {
    type: string
    sql: ${TABLE}.steeringWheelType ;;
  }

  dimension: stew_conservation {
    type: string
    sql: ${TABLE}.stewConservation ;;
  }

  dimension: stew_type {
    type: string
    sql: ${TABLE}.stewType ;;
  }

  dimension: update_date {
    type: number
    sql: ${TABLE}.updateDate ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}.user ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
