view: favoritos_a_venda {
  sql_table_name: views.Favoritos_a_Venda ;;

  dimension: __error__ {
    type: string
    sql: ${TABLE}.__error__ ;;
  }

  dimension: __has_error__ {
    type: yesno
    sql: ${TABLE}.__has_error__ ;;
  }

  dimension: __key__ {
    hidden: yes
    sql: ${TABLE}.__key__ ;;
  }

  dimension_group: _timestamp {
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
    sql: ${TABLE}._timestamp ;;
  }

  dimension: ano_fabricacao {
    type: number
    sql: ${TABLE}.ano_fabricacao ;;
  }

  dimension: ano_modelo {
    type: number
    sql: ${TABLE}.ano_modelo ;;
  }

  dimension: carroceria {
    type: string
    sql: ${TABLE}.carroceria ;;
  }

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: completed {
    type: yesno
    sql: ${TABLE}.completed ;;
  }

  dimension: cor {
    type: string
    sql: ${TABLE}.cor ;;
  }

  dimension_group: data_agendado {
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
    sql: ${TABLE}.data_agendado ;;
  }

  dimension_group: data_anunciado {
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
    sql: ${TABLE}.data_anunciado ;;
  }

  dimension_group: data_exigencia {
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
    sql: ${TABLE}.data_exigencia ;;
  }

  dimension_group: data_pedido_colocado {
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
    sql: ${TABLE}.data_pedido_colocado ;;
  }

  dimension_group: data_reservado {
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
    sql: ${TABLE}.data_reservado ;;
  }

  dimension_group: data_vendido {
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
    sql: ${TABLE}.data_vendido ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.displayName ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }

  dimension: extras {
    hidden: yes
    sql: ${TABLE}.extras ;;
  }

  dimension: fav_id {
    type: number
    sql: ${TABLE}.favId ;;
  }

  dimension: image {
    hidden: yes
    sql: ${TABLE}.image ;;
  }

  dimension: inspection_key {
    type: number
    sql: ${TABLE}.inspectionKey ;;
  }

  dimension: intervalo_agendado_vendido {
    type: number
    sql: ${TABLE}.intervalo_agendado_vendido ;;
  }

  dimension: intervalo_anunciado_reservado {
    type: number
    sql: ${TABLE}.intervalo_anunciado_reservado ;;
  }

  dimension: intervalo_anunciado_vendido {
    type: number
    sql: ${TABLE}.intervalo_anunciado_vendido ;;
  }

  dimension: intervalo_exigencia_anuncio {
    type: number
    sql: ${TABLE}.intervalo_exigencia_anuncio ;;
  }

  dimension: intervalo_reservado_vendido {
    type: number
    sql: ${TABLE}.intervalo_reservado_vendido ;;
  }

  dimension: km {
    type: number
    sql: ${TABLE}.km ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: notifications_opt_in {
    type: yesno
    sql: ${TABLE}.notificationsOptIn ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  dimension: preco_de {
    type: number
    sql: ${TABLE}.preco_de ;;
  }

  dimension: preco_por {
    type: number
    sql: ${TABLE}.preco_por ;;
  }

  dimension: produto {
    type: string
    sql: ${TABLE}.produto ;;
  }

  dimension: refresh_token {
    type: string
    sql: ${TABLE}.refreshToken ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: telephone {
    type: string
    sql: ${TABLE}.telephone ;;
  }

  dimension: transmissao {
    type: string
    sql: ${TABLE}.transmissao ;;
  }

  dimension: uid {
    type: string
    sql: ${TABLE}.uid ;;
  }

  dimension: versao {
    type: string
    sql: ${TABLE}.versao ;;
  }

  measure: count {
    type: count
    drill_fields: [display_name, name]
  }
}

view: favoritos_a_venda____key__ {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: app {
    type: string
    sql: ${TABLE}.app ;;
  }

  dimension: kind {
    type: string
    sql: ${TABLE}.kind ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: namespace {
    type: string
    sql: ${TABLE}.namespace ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.path ;;
  }
}

view: favoritos_a_venda__extras____key__ {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: app {
    type: string
    sql: ${TABLE}.app ;;
  }

  dimension: kind {
    type: string
    sql: ${TABLE}.kind ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: namespace {
    type: string
    sql: ${TABLE}.namespace ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.path ;;
  }
}

view: favoritos_a_venda__extras {
  dimension: __key__ {
    hidden: yes
    sql: ${TABLE}.__key__ ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: hash {
    type: string
    sql: ${TABLE}.``hash`` ;;
  }

  dimension: inspection_key {
    type: string
    sql: ${TABLE}.inspectionKey ;;
  }
}

view: favoritos_a_venda__image {
  dimension: entity {
    hidden: yes
    sql: ${TABLE}.entity ;;
  }

  dimension: provided {
    type: string
    sql: ${TABLE}.provided ;;
  }

  dimension: string {
    type: string
    sql: ${TABLE}.string ;;
  }
}

view: favoritos_a_venda__image__entity____key__ {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: app {
    type: string
    sql: ${TABLE}.app ;;
  }

  dimension: kind {
    type: string
    sql: ${TABLE}.kind ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: namespace {
    type: string
    sql: ${TABLE}.namespace ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.path ;;
  }
}

view: favoritos_a_venda__image__entity__data____key__ {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: app {
    type: string
    sql: ${TABLE}.app ;;
  }

  dimension: kind {
    type: string
    sql: ${TABLE}.kind ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: namespace {
    type: string
    sql: ${TABLE}.namespace ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.path ;;
  }
}

view: favoritos_a_venda__image__entity__data {
  dimension: __key__ {
    hidden: yes
    sql: ${TABLE}.__key__ ;;
  }

  dimension: height {
    type: number
    sql: ${TABLE}.height ;;
  }

  dimension: is_silhouette {
    type: yesno
    sql: ${TABLE}.is_silhouette ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: width {
    type: number
    sql: ${TABLE}.width ;;
  }
}

view: favoritos_a_venda__image__entity {
  dimension: __key__ {
    hidden: yes
    sql: ${TABLE}.__key__ ;;
  }

  dimension: data {
    hidden: yes
    sql: ${TABLE}.data ;;
  }
}
