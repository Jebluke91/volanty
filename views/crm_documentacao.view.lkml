view: crm_documentacao {
  sql_table_name: `volanty-production.views_LGPD.CRM_Documentacao`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: comprovante_ar_documentacao {
    type: string
    sql: ${TABLE}.comprovante_ar_documentacao ;;
  }

  dimension: comprovante_pagamento_de_debitos_documentacao {
    type: string
    sql: ${TABLE}.comprovante_pagamento_de_debitos_documentacao ;;
  }

  dimension_group: criado_em {
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
    sql: ${TABLE}.criado_em ;;
  }

  dimension: criado_por {
    type: string
    sql: ${TABLE}.criado_por ;;
  }

  dimension_group: data_de_inicio {
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
    sql: ${TABLE}.data_de_inicio ;;
  }

  dimension_group: data_de_termino {
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
    sql: ${TABLE}.data_de_termino ;;
  }

  dimension: despachante_documentacao {
    type: string
    sql: ${TABLE}.despachante_documentacao ;;
  }

  dimension: documento_atpve_documentacao {
    type: string
    sql: ${TABLE}.documento_atpve_documentacao ;;
  }

  dimension: documentos_com_restricoes_documentacao {
    type: string
    sql: ${TABLE}.documentos_com_restricoes_documentacao ;;
  }

  dimension_group: dt_enter_aguardando_documentacao_documentacao {
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
    sql: ${TABLE}.dt_enter_aguardando_documentacao_documentacao ;;
  }

  dimension_group: dt_enter_assinaturacartorio_documentacao {
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
    sql: ${TABLE}.dt_enter_assinaturacartorio_documentacao ;;
  }

  dimension_group: dt_enter_compra_finalizada_documentacao {
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
    sql: ${TABLE}.dt_enter_compra_finalizada_documentacao ;;
  }

  dimension_group: dt_enter_correio_documentacao {
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
    sql: ${TABLE}.dt_enter_correio_documentacao ;;
  }

  dimension_group: dt_enter_despachante_creditas_documentacao {
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
    sql: ${TABLE}.dt_enter_despachante_creditas_documentacao ;;
  }

  dimension_group: dt_enter_despachante_particular_documentacao {
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
    sql: ${TABLE}.dt_enter_despachante_particular_documentacao ;;
  }

  dimension_group: dt_enter_documento_com_despachante_documentacao {
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
    sql: ${TABLE}.dt_enter_documento_com_despachante_documentacao ;;
  }

  dimension_group: dt_enter_enviar_para_despachante_documentacao {
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
    sql: ${TABLE}.dt_enter_enviar_para_despachante_documentacao ;;
  }

  dimension_group: dt_enter_formalizacao_de_documentos_documentacao {
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
    sql: ${TABLE}.dt_enter_formalizacao_de_documentos_documentacao ;;
  }

  dimension_group: dt_enter_iniciar_compra_documentacao {
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
    sql: ${TABLE}.dt_enter_iniciar_compra_documentacao ;;
  }

  dimension_group: dt_enter_iniciar_vendas_documentacao {
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
    sql: ${TABLE}.dt_enter_iniciar_vendas_documentacao ;;
  }

  dimension_group: dt_enter_negocios_cancelados_documentacao {
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
    sql: ${TABLE}.dt_enter_negocios_cancelados_documentacao ;;
  }

  dimension_group: dt_enter_negocios_finalizados_documentacao {
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
    sql: ${TABLE}.dt_enter_negocios_finalizados_documentacao ;;
  }

  dimension_group: dt_enter_pedido_2_via_documentacao {
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
    sql: ${TABLE}.dt_enter_pedido_2_via_documentacao ;;
  }

  dimension_group: dt_enter_pendencia_atpve_documentacao {
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
    sql: ${TABLE}.dt_enter_pendencia_atpve_documentacao ;;
  }

  dimension_group: dt_enter_recompra_documentacao {
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
    sql: ${TABLE}.dt_enter_recompra_documentacao ;;
  }

  dimension_group: dt_enter_restricoes_documentacao {
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
    sql: ${TABLE}.dt_enter_restricoes_documentacao ;;
  }

  dimension_group: dt_enter_solicitar_atpve_consorcio_documentacao {
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
    sql: ${TABLE}.dt_enter_solicitar_atpve_consorcio_documentacao ;;
  }

  dimension_group: dt_enter_solicitar_atpve_documentacao {
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
    sql: ${TABLE}.dt_enter_solicitar_atpve_documentacao ;;
  }

  dimension: email_do_cliente {
    type: string
    sql: ${TABLE}.email_do_cliente ;;
  }

  dimension: fase_do_negocio {
    type: string
    sql: ${TABLE}.fase_do_negocio ;;
  }

  dimension: laudo_ecv_documentacao {
    type: string
    sql: ${TABLE}.laudo_ecv_documentacao ;;
  }

  dimension_group: modificado_em {
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
    sql: ${TABLE}.modificado_em ;;
  }

  dimension: motivo_documentacao {
    type: string
    sql: ${TABLE}.motivo_documentacao ;;
  }

  dimension: negocio_recorrente {
    type: string
    sql: ${TABLE}.negocio_recorrente ;;
  }

  dimension: nome_contato {
    type: string
    sql: ${TABLE}.nome_contato ;;
  }

  dimension: novo_negocio {
    type: string
    sql: ${TABLE}.novo_negocio ;;
  }

  dimension: pedido_laudo_ecv_documentacao {
    type: string
    sql: ${TABLE}.pedido_laudo_ecv_documentacao ;;
  }

  dimension: pessoa_responsavel {
    type: string
    sql: ${TABLE}.pessoa_responsavel ;;
  }

  dimension: pipeline {
    type: string
    sql: ${TABLE}.pipeline ;;
  }

  dimension: time_responsavel_documentacao {
    type: string
    sql: ${TABLE}.time_responsavel_documentacao ;;
  }

  dimension: tipo_de_solicitacao_documentacao {
    type: string
    sql: ${TABLE}.tipo_de_solicitacao_documentacao ;;
  }

  dimension: uf_da_documentacao_documentacao {
    type: string
    sql: ${TABLE}.uf_da_documentacao_documentacao ;;
  }

  dimension: verificou_chave_reserva_documentacao {
    type: string
    sql: ${TABLE}.verificou_chave_reserva_documentacao ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
