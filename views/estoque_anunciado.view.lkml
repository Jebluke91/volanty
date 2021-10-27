view: estoque_anunciado {
  sql_table_name: `volanty-production.views.Estoque_Anunciado`
    ;;

  dimension: airbag_motorista {
    type: string
    sql: ${TABLE}.Airbag_Motorista ;;
  }

  dimension: airbag_passageiro {
    type: string
    sql: ${TABLE}.Airbag_Passageiro ;;
  }

  dimension: ano_fabricacao {
    type: string
    sql: ${TABLE}.ano_fabricacao ;;
  }

  dimension: ano_modelo {
    type: number
    sql: ${TABLE}.ano_modelo ;;
  }

  dimension: cambio {
    type: string
    sql: ${TABLE}.Cambio ;;
  }

  dimension: empresa {
    type: string
    sql: ${TABLE}.empresa ;;
  }

  dimension: carroceria {
    type: string
    sql: ${TABLE}.carroceria ;;
  }

  dimension: categoria {
    type: string
    sql: ${TABLE}.categoria ;;
  }

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
  }

  dimension: combustivel {
    type: string
    sql: ${TABLE}.combustivel ;;
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

  dimension: empresa {
    type: string
    sql: ${TABLE}.empresa ;;
  }

  dimension: freio_abs {
    type: string
    sql: ${TABLE}.Freio_Abs ;;
  }

  dimension: inspection_key {
    type: string
    sql: ${TABLE}.inspection_key ;;
  }

  dimension: kit_multimidia {
    type: string
    sql: ${TABLE}.Kit_Multimidia ;;
  }

  dimension: km {
    type: number
    sql: ${TABLE}.km ;;
  }

  dimension: link_anuncio {
    type: string
    sql: ${TABLE}.link_anuncio ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  dimension: portas {
    type: string
    sql: ${TABLE}.portas ;;
  }

  dimension: preco_anuncio {
    type: number
    sql: ${TABLE}.preco_anuncio ;;
  }

  dimension: preco_webmotors {
    type: number
    sql: ${TABLE}.preco_webmotors ;;
  }

  dimension: precofipe {
    type: number
    sql: ${TABLE}.precofipe ;;
  }

  dimension: qtd_leads {
    type: number
    sql: ${TABLE}.Qtd_Leads ;;
  }

  dimension: qtd_visitas {
    type: number
    sql: ${TABLE}.Qtd_Visitas ;;
  }

  dimension: rodas_liga_leve {
    type: string
    sql: ${TABLE}.Rodas_liga_leve ;;
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
