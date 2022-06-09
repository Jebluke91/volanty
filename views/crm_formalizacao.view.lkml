view: crm_formalizacao {
  sql_table_name: `volanty-production.views.CRM_Formalizacao`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: ano_do_veiculo {
    type: string
    sql: ${TABLE}.ano_do_veiculo ;;
  }

  dimension: ano_modelo {
    type: string
    sql: ${TABLE}.ano_modelo ;;
  }

  dimension: atividade___formalizacao {
    type: string
    sql: ${TABLE}.atividade___formalizacao ;;
  }

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
  }

  dimension: cav_de_origem {
    type: string
    sql: ${TABLE}.cav_de_origem ;;
  }

  dimension: contrato_de_venda {
    type: string
    sql: ${TABLE}.contrato_de_venda ;;
  }

  dimension: cpf_cnpj___formalizacao {
    type: string
    sql: ${TABLE}.cpf_cnpj___formalizacao ;;
  }

  dimension: dados_bancarios_do_cliente___formalizacao {
    type: string
    sql: ${TABLE}.dados_bancarios_do_cliente___formalizacao ;;
  }

  dimension_group: data_entrega_do_veiculo {
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
    sql: ${TABLE}.data_entrega_do_veiculo ;;
  }

  dimension_group: data_formalizacao {
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
    sql: ${TABLE}.data_formalizacao ;;
  }

  dimension_group: dt_enter_alteracao_de_contrato__consultor__formalizacao {
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
    sql: ${TABLE}.dt_enter_alteracao_de_contrato__consultor__formalizacao ;;
  }

  dimension_group: dt_enter_blocklist_formalizacao {
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
    sql: ${TABLE}.dt_enter_blocklist_formalizacao ;;
  }

  dimension_group: dt_enter_contrato_assinado__consultor__formalizacao {
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
    sql: ${TABLE}.dt_enter_contrato_assinado__consultor__formalizacao ;;
  }

  dimension_group: dt_enter_contrato_emitido_e_enviado_formalizacao {
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
    sql: ${TABLE}.dt_enter_contrato_emitido_e_enviado_formalizacao ;;
  }

  dimension_group: dt_enter_contratos_cancelados_formalizacao {
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
    sql: ${TABLE}.dt_enter_contratos_cancelados_formalizacao ;;
  }

  dimension_group: dt_enter_contratos_fechados_formalizacao {
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
    sql: ${TABLE}.dt_enter_contratos_fechados_formalizacao ;;
  }

  dimension_group: dt_enter_desistente_formalizacao {
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
    sql: ${TABLE}.dt_enter_desistente_formalizacao ;;
  }

  dimension_group: dt_enter_desistentes_pos_vendas_formalizacao {
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
    sql: ${TABLE}.dt_enter_desistentes_pos_vendas_formalizacao ;;
  }

  dimension_group: dt_enter_em_analise__gar__formalizacao {
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
    sql: ${TABLE}.dt_enter_em_analise__gar__formalizacao ;;
  }

  dimension_group: dt_enter_em_analise__seg__formalizacao {
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
    sql: ${TABLE}.dt_enter_em_analise__seg__formalizacao ;;
  }

  dimension_group: dt_enter_em_analise_formalizacao {
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
    sql: ${TABLE}.dt_enter_em_analise_formalizacao ;;
  }

  dimension_group: dt_enter_emitido__gar__formalizacao {
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
    sql: ${TABLE}.dt_enter_emitido__gar__formalizacao ;;
  }

  dimension_group: dt_enter_emitido__seg__formalizacao {
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
    sql: ${TABLE}.dt_enter_emitido__seg__formalizacao ;;
  }

  dimension_group: dt_enter_garantia_formalizacao {
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
    sql: ${TABLE}.dt_enter_garantia_formalizacao ;;
  }

  dimension_group: dt_enter_nova_proposta_formalizacao {
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
    sql: ${TABLE}.dt_enter_nova_proposta_formalizacao ;;
  }

  dimension_group: dt_enter_pendencia__consultor__formalizacao {
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
    sql: ${TABLE}.dt_enter_pendencia__consultor__formalizacao ;;
  }

  dimension_group: dt_enter_pendencia_assinar_contrato__consultor__formalizacao {
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
    sql: ${TABLE}.dt_enter_pendencia_assinar_contrato__consultor__formalizacao ;;
  }

  dimension_group: dt_enter_pendencia_concluida_formalizacao {
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
    sql: ${TABLE}.dt_enter_pendencia_concluida_formalizacao ;;
  }

  dimension_group: dt_enter_pendencia_termos__pos__formalizacao {
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
    sql: ${TABLE}.dt_enter_pendencia_termos__pos__formalizacao ;;
  }

  dimension_group: dt_enter_pendencia_termos_concluida__pos__formalizacao {
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
    sql: ${TABLE}.dt_enter_pendencia_termos_concluida__pos__formalizacao ;;
  }

  dimension_group: dt_enter_seguro_formalizacao {
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
    sql: ${TABLE}.dt_enter_seguro_formalizacao ;;
  }

  dimension: e_mail_time_inside {
    type: string
    sql: ${TABLE}.e_mail_time_inside ;;
  }

  dimension: e_mail_time_showroom {
    type: string
    sql: ${TABLE}.e_mail_time_showroom ;;
  }

  dimension: extensao_do_motivo_01___formalizacao {
    type: string
    sql: ${TABLE}.extensao_do_motivo_01___formalizacao ;;
  }

  dimension: extensao_do_motivo_02___formalizacao {
    type: string
    sql: ${TABLE}.extensao_do_motivo_02___formalizacao ;;
  }

  dimension: extensao_do_motivo_03___formalizacao {
    type: string
    sql: ${TABLE}.extensao_do_motivo_03___formalizacao ;;
  }

  dimension: extensao_do_motivo___formalizacao {
    type: string
    sql: ${TABLE}.extensao_do_motivo___formalizacao ;;
  }

  dimension: fase {
    type: string
    sql: ${TABLE}.fase ;;
  }

  dimension: fase_do_negocio {
    type: string
    sql: ${TABLE}.fase_do_negocio ;;
  }

  dimension_group: hora_lead__admin____formalizacao {
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
    sql: ${TABLE}.hora_lead__admin____formalizacao ;;
  }

  dimension_group: horario_envio_sms___formalizacao {
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
    sql: ${TABLE}.horario_envio_sms___formalizacao ;;
  }

  dimension_group: horario_fim___formalizacao {
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
    sql: ${TABLE}.horario_fim___formalizacao ;;
  }

  dimension_group: horario_fim_reanalise_01___formalizacao {
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
    sql: ${TABLE}.horario_fim_reanalise_01___formalizacao ;;
  }

  dimension_group: horario_fim_reanalise_02___formalizacao {
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
    sql: ${TABLE}.horario_fim_reanalise_02___formalizacao ;;
  }

  dimension_group: horario_fim_reanalise_03___formalizacao {
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
    sql: ${TABLE}.horario_fim_reanalise_03___formalizacao ;;
  }

  dimension_group: horario_inicio___formalizacao {
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
    sql: ${TABLE}.horario_inicio___formalizacao ;;
  }

  dimension_group: horario_inicio_reanalise_01___formalizacao {
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
    sql: ${TABLE}.horario_inicio_reanalise_01___formalizacao ;;
  }

  dimension_group: horario_inicio_reanalise_02___formalizacao {
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
    sql: ${TABLE}.horario_inicio_reanalise_02___formalizacao ;;
  }

  dimension_group: horario_inicio_reanalise_03___formalizacao {
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
    sql: ${TABLE}.horario_inicio_reanalise_03___formalizacao ;;
  }

  dimension: km_atual {
    type: string
    sql: ${TABLE}.km_atual ;;
  }

  dimension: km_de_retirada {
    type: string
    sql: ${TABLE}.km_de_retirada ;;
  }

  dimension: link_do_pedido_admin___formalizacao {
    type: string
    sql: ${TABLE}.link_do_pedido_admin___formalizacao ;;
  }

  dimension: link_para_pasta_do_drive___formalizacao {
    type: string
    sql: ${TABLE}.link_para_pasta_do_drive___formalizacao ;;
  }

  dimension: local_de_entrega___formalizacao {
    type: string
    sql: ${TABLE}.local_de_entrega___formalizacao ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: motivo___formalizacao {
    type: string
    sql: ${TABLE}.motivo___formalizacao ;;
  }

  dimension: motivo_biometria___formalizacao {
    type: string
    sql: ${TABLE}.motivo_biometria___formalizacao ;;
  }

  dimension: motivo_blocklist___formalizacao {
    type: string
    sql: ${TABLE}.motivo_blocklist___formalizacao ;;
  }

  dimension: motivo_da_alteracao_de_contrato {
    type: string
    sql: ${TABLE}.motivo_da_alteracao_de_contrato ;;
  }

  dimension: motivo_do_status_01___formalizacao {
    type: string
    sql: ${TABLE}.motivo_do_status_01___formalizacao ;;
  }

  dimension: motivo_do_status_02___formalizacao {
    type: string
    sql: ${TABLE}.motivo_do_status_02___formalizacao ;;
  }

  dimension: motivo_do_status_03___formalizacao {
    type: string
    sql: ${TABLE}.motivo_do_status_03___formalizacao ;;
  }

  dimension: motivo_do_status___formalizacao {
    type: string
    sql: ${TABLE}.motivo_do_status___formalizacao ;;
  }

  dimension: motivo_pendencia_de_termos {
    type: string
    sql: ${TABLE}.motivo_pendencia_de_termos ;;
  }

  dimension: nome_do_analista___formalizacao {
    type: string
    sql: ${TABLE}.nome_do_analista___formalizacao ;;
  }

  dimension: nome_do_analista___formalizacao_2 {
    type: string
    sql: ${TABLE}.nome_do_analista___formalizacao_2 ;;
  }

  dimension: nome_do_analista_reanalise___formalizacao {
    type: string
    sql: ${TABLE}.nome_do_analista_reanalise___formalizacao ;;
  }

  dimension: nova_placa {
    type: string
    sql: ${TABLE}.nova_placa ;;
  }

  dimension: observacao_comercial___formalizacao {
    type: string
    sql: ${TABLE}.observacao_comercial___formalizacao ;;
  }

  dimension: observacao_formalizacao {
    type: string
    sql: ${TABLE}.observacao_formalizacao ;;
  }

  dimension: observacao_pos_venda___formalizacao {
    type: string
    sql: ${TABLE}.observacao_pos_venda___formalizacao ;;
  }

  dimension: pessoa_responsavel {
    type: string
    sql: ${TABLE}.pessoa_responsavel ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  dimension: placa___formalizacao {
    type: string
    sql: ${TABLE}.placa___formalizacao ;;
  }

  dimension: quem_subiu_o_pedido_ {
    type: string
    sql: ${TABLE}.quem_subiu_o_pedido_ ;;
  }

  dimension: reemitido___formalizacao {
    type: string
    sql: ${TABLE}.reemitido___formalizacao ;;
  }

  dimension: responsavel_consultor_inside___formalizacao {
    type: string
    sql: ${TABLE}.responsavel_consultor_inside___formalizacao ;;
  }

  dimension: responsavel_consultor_showroom___formalizacao {
    type: string
    sql: ${TABLE}.responsavel_consultor_showroom___formalizacao ;;
  }

  dimension_group: retorno_biometria___formalizacao {
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
    sql: ${TABLE}.retorno_biometria___formalizacao ;;
  }

  dimension: se_for_troca__informar_placa_do_veiculo_trocado___formalizacao {
    type: string
    sql: ${TABLE}.se_for_troca__informar_placa_do_veiculo_trocado___formalizacao ;;
  }

  dimension: solicitado_biometria___formalizacao {
    type: string
    sql: ${TABLE}.solicitado_biometria___formalizacao ;;
  }

  dimension: status___formalizacao {
    type: string
    sql: ${TABLE}.status___formalizacao ;;
  }

  dimension: status_reanalise_01___formalizacao {
    type: string
    sql: ${TABLE}.status_reanalise_01___formalizacao ;;
  }

  dimension: status_reanalise_02___formalizacao {
    type: string
    sql: ${TABLE}.status_reanalise_02___formalizacao ;;
  }

  dimension: status_reanalise_03___formalizacao {
    type: string
    sql: ${TABLE}.status_reanalise_03___formalizacao ;;
  }

  dimension: termo_de_garantia {
    type: string
    sql: ${TABLE}.termo_de_garantia ;;
  }

  dimension: tipo_de_contrato___formalizacao {
    type: string
    sql: ${TABLE}.tipo_de_contrato___formalizacao ;;
  }

  dimension: tipo_de_doc_ident___formalizacao {
    type: string
    sql: ${TABLE}.tipo_de_doc_ident___formalizacao ;;
  }

  dimension: tipo_de_garantia___formalizacao {
    type: string
    sql: ${TABLE}.tipo_de_garantia___formalizacao ;;
  }

  dimension: tipo_de_negocio___form {
    type: string
    sql: ${TABLE}.tipo_de_negocio___form ;;
  }

  dimension: tipo_de_termo___formalizacao {
    type: string
    sql: ${TABLE}.tipo_de_termo___formalizacao ;;
  }

  dimension: validacao_de_boleto___formalizacao {
    type: string
    sql: ${TABLE}.validacao_de_boleto___formalizacao ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
