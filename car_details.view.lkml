view: car_details {
  sql_table_name: datalake.CarDetails ;;

  dimension: _id_ {
    type: number
    value_format_name: id
    sql: ${TABLE}._id_ ;;
  }

  dimension: anunciado_key {
    type: number
    sql: ${TABLE}.anunciadoKey ;;
  }

  dimension: armored {
    type: yesno
    sql: ${TABLE}.armored ;;
  }

  dimension: armored_brand {
    type: string
    sql: ${TABLE}.armoredBrand ;;
  }

  dimension: armored_current_guarantee {
    type: yesno
    sql: ${TABLE}.armoredCurrentGuarantee ;;
  }

  dimension: armored_delaminated_front_glass {
    type: yesno
    sql: ${TABLE}.armoredDelaminatedFrontGlass ;;
  }

  dimension: armored_delaminated_left_side_front_glass {
    type: yesno
    sql: ${TABLE}.armoredDelaminatedLeftSideFrontGlass ;;
  }

  dimension: armored_delaminated_left_side_rear_glass {
    type: yesno
    sql: ${TABLE}.armoredDelaminatedLeftSideRearGlass ;;
  }

  dimension: armored_delaminated_rear_glass {
    type: yesno
    sql: ${TABLE}.armoredDelaminatedRearGlass ;;
  }

  dimension: armored_delaminated_right_side_front_glass {
    type: yesno
    sql: ${TABLE}.armoredDelaminatedRightSideFrontGlass ;;
  }

  dimension: armored_delaminated_right_side_rear_glass {
    type: yesno
    sql: ${TABLE}.armoredDelaminatedRightSideRearGlass ;;
  }

  dimension: armored_documentation {
    type: yesno
    sql: ${TABLE}.armoredDocumentation ;;
  }

  dimension: armored_level {
    type: string
    sql: ${TABLE}.armoredLevel ;;
  }

  dimension_group: armored_warranty_end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.armoredWarrantyEnd ;;
  }

  dimension: body_style {
    type: string
    sql: ${TABLE}.bodyStyle ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: brand_id {
    type: number
    sql: ${TABLE}.brandId ;;
  }

  dimension: car_photos {
    hidden: yes
    sql: ${TABLE}.carPhotos ;;
  }

  dimension: car_photos_thumb {
    hidden: yes
    sql: ${TABLE}.carPhotosThumb ;;
  }

  dimension: car_videos {
    hidden: yes
    sql: ${TABLE}.carVideos ;;
  }

  dimension: car_videos_thumb {
    hidden: yes
    sql: ${TABLE}.carVideosThumb ;;
  }

  dimension: cnd {
    type: yesno
    sql: ${TABLE}.cnd ;;
  }

  dimension: color {
    type: string
    sql: ${TABLE}.color ;;
  }

  dimension: cylinder {
    type: yesno
    sql: ${TABLE}.cylinder ;;
  }

  dimension: cylinder_validity {
    type: string
    sql: ${TABLE}.cylinderValidity ;;
  }

  dimension: factory_warrant {
    type: string
    sql: ${TABLE}.factoryWarrant ;;
  }

  dimension: fuel {
    type: number
    sql: ${TABLE}.fuel ;;
  }

  dimension: gas_kit {
    type: yesno
    sql: ${TABLE}.gasKit ;;
  }

  dimension: gnv_capacity {
    type: number
    sql: ${TABLE}.gnvCapacity ;;
  }

  dimension: gnv_generation {
    type: string
    sql: ${TABLE}.gnvGeneration ;;
  }

  dimension: homologation {
    type: yesno
    sql: ${TABLE}.homologation ;;
  }

  dimension_group: homologation_expiration {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.homologationExpirationDate ;;
  }

  dimension: inspection_key {
    type: number
    sql: ${TABLE}.inspectionKey ;;
  }

  dimension: is_blacklisted {
    type: yesno
    sql: ${TABLE}.isBlacklisted ;;
  }

  dimension: km {
    type: number
    sql: ${TABLE}.km ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: model_id {
    type: number
    sql: ${TABLE}.modelId ;;
  }

  dimension: number_of_doors {
    type: number
    sql: ${TABLE}.numberOfDoors ;;
  }

  dimension: number_of_seats {
    type: number
    sql: ${TABLE}.numberOfSeats ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}.owner ;;
  }

  dimension: partition_entry {
    type: number
    sql: ${TABLE}.partition_entry ;;
  }

  dimension: plate {
    type: string
    sql: ${TABLE}.plate ;;
  }

  dimension: plate_auto_certo {
    type: string
    sql: ${TABLE}.plateAutoCerto ;;
  }

  dimension: plate_uf {
    type: string
    sql: ${TABLE}.plateUF ;;
  }

  dimension: seal_plate {
    type: yesno
    sql: ${TABLE}.sealPlate ;;
  }

  dimension: transmission {
    type: string
    sql: ${TABLE}.transmission ;;
  }

  dimension: uf {
    type: string
    sql: ${TABLE}.uf ;;
  }

  dimension_group: update {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
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

view: car_details__car_videos_thumb {
  dimension: entry {
    type: string
    sql: ${TABLE}.entry ;;
  }
}

view: car_details__car_photos_thumb {
  dimension: entry {
    type: string
    sql: ${TABLE}.entry ;;
  }
}

view: car_details__car_photos {
  dimension: entry {
    type: string
    sql: ${TABLE}.entry ;;
  }
}

view: car_details__car_videos {
  dimension: entry {
    type: string
    sql: ${TABLE}.entry ;;
  }
}
