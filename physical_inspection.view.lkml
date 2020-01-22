view: physical_inspection {
  sql_table_name: datalake.PhysicalInspection ;;

  dimension: back_door_left_side_dint {
    type: string
    sql: ${TABLE}.backDoorLeftSideDint ;;
  }

  dimension: back_door_left_side_retouched {
    type: string
    sql: ${TABLE}.backDoorLeftSideRetouched ;;
  }

  dimension: back_door_left_side_scratched {
    type: string
    sql: ${TABLE}.backDoorLeftSideScratched ;;
  }

  dimension: back_door_left_side_smashed {
    type: string
    sql: ${TABLE}.backDoorLeftSideSmashed ;;
  }

  dimension: back_door_right_side_dint {
    type: string
    sql: ${TABLE}.backDoorRightSideDint ;;
  }

  dimension: back_door_right_side_retouched {
    type: string
    sql: ${TABLE}.backDoorRightSideRetouched ;;
  }

  dimension: back_door_right_side_scratched {
    type: string
    sql: ${TABLE}.backDoorRightSideScratched ;;
  }

  dimension: back_door_right_side_smashed {
    type: string
    sql: ${TABLE}.backDoorRightSideSmashed ;;
  }

  dimension: ceiling_dint {
    type: string
    sql: ${TABLE}.ceilingDint ;;
  }

  dimension: ceiling_retouched {
    type: string
    sql: ${TABLE}.ceilingRetouched ;;
  }

  dimension: ceiling_scratched {
    type: string
    sql: ${TABLE}.ceilingScratched ;;
  }

  dimension: ceiling_smashed {
    type: string
    sql: ${TABLE}.ceilingSmashed ;;
  }

  dimension: front_bumper_dint {
    type: string
    sql: ${TABLE}.frontBumperDint ;;
  }

  dimension: front_bumper_retouched {
    type: string
    sql: ${TABLE}.frontBumperRetouched ;;
  }

  dimension: front_bumper_scratched {
    type: string
    sql: ${TABLE}.frontBumperScratched ;;
  }

  dimension: front_bumper_smashed {
    type: string
    sql: ${TABLE}.frontBumperSmashed ;;
  }

  dimension: front_door_left_side_dint {
    type: string
    sql: ${TABLE}.frontDoorLeftSideDint ;;
  }

  dimension: front_door_left_side_retouched {
    type: string
    sql: ${TABLE}.frontDoorLeftSideRetouched ;;
  }

  dimension: front_door_left_side_scratched {
    type: string
    sql: ${TABLE}.frontDoorLeftSideScratched ;;
  }

  dimension: front_door_left_side_smashed {
    type: string
    sql: ${TABLE}.frontDoorLeftSideSmashed ;;
  }

  dimension: front_door_right_side_dint {
    type: string
    sql: ${TABLE}.frontDoorRightSideDint ;;
  }

  dimension: front_door_right_side_retouched {
    type: string
    sql: ${TABLE}.frontDoorRightSideRetouched ;;
  }

  dimension: front_door_right_side_scratched {
    type: string
    sql: ${TABLE}.frontDoorRightSideScratched ;;
  }

  dimension: front_door_right_side_smashed {
    type: string
    sql: ${TABLE}.frontDoorRightSideSmashed ;;
  }

  dimension: front_tires_conservation {
    type: string
    sql: ${TABLE}.frontTiresConservation ;;
  }

  dimension: frontal_fender_left_side_dint {
    type: string
    sql: ${TABLE}.frontalFenderLeftSideDint ;;
  }

  dimension: frontal_fender_left_side_retouched {
    type: string
    sql: ${TABLE}.frontalFenderLeftSideRetouched ;;
  }

  dimension: frontal_fender_left_side_scratched {
    type: string
    sql: ${TABLE}.frontalFenderLeftSideScratched ;;
  }

  dimension: frontal_fender_left_side_smashed {
    type: string
    sql: ${TABLE}.frontalFenderLeftSideSmashed ;;
  }

  dimension: frontal_fender_right_side_dint {
    type: string
    sql: ${TABLE}.frontalFenderRightSideDint ;;
  }

  dimension: frontal_fender_right_side_retouched {
    type: string
    sql: ${TABLE}.frontalFenderRightSideRetouched ;;
  }

  dimension: frontal_fender_right_side_scratched {
    type: string
    sql: ${TABLE}.frontalFenderRightSideScratched ;;
  }

  dimension: frontal_fender_right_side_smashed {
    type: string
    sql: ${TABLE}.frontalFenderRightSideSmashed ;;
  }

  dimension: hood_dint {
    type: string
    sql: ${TABLE}.hoodDint ;;
  }

  dimension: hood_retouched {
    type: string
    sql: ${TABLE}.hoodRetouched ;;
  }

  dimension: hood_scratched {
    type: string
    sql: ${TABLE}.hoodScratched ;;
  }

  dimension: hood_smashed {
    type: string
    sql: ${TABLE}.hoodSmashed ;;
  }

  dimension: indicator_steppe {
    type: string
    sql: ${TABLE}.indicatorSteppe ;;
  }

  dimension: inspection_key {
    type: number
    sql: ${TABLE}.inspectionKey ;;
  }

  dimension: lighting {
    type: string
    sql: ${TABLE}.lighting ;;
  }

  dimension: monkey_and_triangle {
    type: yesno
    sql: ${TABLE}.monkeyAndTriangle ;;
  }

  dimension: motor_leakage {
    type: yesno
    sql: ${TABLE}.motorLeakage ;;
  }

  dimension: motor_noise {
    type: yesno
    sql: ${TABLE}.motorNoise ;;
  }

  dimension: obs_ceiling {
    type: string
    sql: ${TABLE}.obsCeiling ;;
  }

  dimension: obs_front_bumper {
    type: string
    sql: ${TABLE}.obsFrontBumper ;;
  }

  dimension: obs_front_tires {
    type: string
    sql: ${TABLE}.obsFrontTires ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
