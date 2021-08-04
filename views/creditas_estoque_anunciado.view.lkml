view: creditas_estoque_anunciado {
  sql_table_name: `volanty-production.views.Creditas_Estoque_Anunciado`
    ;;

  dimension: categoria {
    type: string
    sql: ${TABLE}.categoria ;;
  }

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
  }

  dimension: cor {
    type: string
    sql: ${TABLE}.cor ;;
  }

  dimension_group: data_anunciado {
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
    sql: ${TABLE}.data_anunciado ;;
  }

  dimension: dias_em_estoque {
    type: number
    sql: ${TABLE}.Dias_Em_Estoque ;;
    }



  dimension: inspection_key {
    type: string
    sql: ${TABLE}.inspection_key ;;
  }

  dimension: km {
    type: string
    sql: ${TABLE}.km ;;
  }

  dimension: link_anuncio {
    type: string
    sql: ${TABLE}.link_anuncio ;;
  }

  dimension: preco_anuncio {
    type: string
    sql: ${TABLE}.preco_anuncio ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: modelyear {
    type: string
    sql: ${TABLE}.modelyear ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  dimension: precofipe {
    type: number
    sql: ${TABLE}.precofipe ;;
  }

  dimension: qtd_leads {
    type: number
    sql: ${TABLE}.Qtd_Leads ;;
    drill_fields: [car_details*]
    html:{{ rendered_value }} <br>
          {{ modelo._rendered_value }} - {{ placa._rendered_value }} <br>
         ;;  ## here we use || to concatenate the values

    }
    set: car_details {
      fields: [placa,marca,modelo,versao,preco_anuncio,precofipe,qtd_visitas,dias_em_estoque]
    }


  dimension: qtd_visitas {
    type: number
    sql: ${TABLE}.Qtd_Visitas ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: tag {
    type: string
    sql: ${TABLE}.tag ;;
  }

  dimension: uf {
    type: string
    sql: ${TABLE}.UF ;;
  }

  dimension: versao {
    type: string
    sql: ${TABLE}.versao ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
