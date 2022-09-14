view: crm_garantia {
  sql_table_name: `volanty-production.views.CRM_Garantia`
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

  dimension: calendario___garantia {
    type: string
    sql: ${TABLE}.calendario___garantia ;;
  }

  dimension: causa_do_servico___garantia {
    type: string
    sql: ${TABLE}.causa_do_servico___garantia ;;
  }

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
  }

  dimension: cpf {
    type: string
    sql: ${TABLE}.cpf ;;
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

  dimension_group: data_da_entrega_do_diagnostico___garantia {
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
    sql: ${TABLE}.data_da_entrega_do_diagnostico___garantia ;;
  }

  dimension_group: data_de_aprovacao_do_servico___garantia {
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
    sql: ${TABLE}.data_de_aprovacao_do_servico___garantia ;;
  }

  dimension_group: data_de_conclusao_do_servico___garantia {
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
    sql: ${TABLE}.data_de_conclusao_do_servico___garantia ;;
  }

  dimension_group: data_de_entrega_do_veiculo___garantia {
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
    sql: ${TABLE}.data_de_entrega_do_veiculo___garantia ;;
  }

  dimension_group: data_de_envio_da_solicitacao_de_pagamento___garantia {
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
    sql: ${TABLE}.data_de_envio_da_solicitacao_de_pagamento___garantia ;;
  }

  dimension_group: data_de_inicio_do_servico___garantia {
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
    sql: ${TABLE}.data_de_inicio_do_servico___garantia ;;
  }

  dimension_group: data_de_recebimento_de_peca___garantia {
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
    sql: ${TABLE}.data_de_recebimento_de_peca___garantia ;;
  }

  dimension_group: data_de_retirada_do_veiculo_da_oficina___garantia {
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
    sql: ${TABLE}.data_de_retirada_do_veiculo_da_oficina___garantia ;;
  }

  dimension_group: data_de_solicitacao_de_peca___garantia {
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
    sql: ${TABLE}.data_de_solicitacao_de_peca___garantia ;;
  }

  dimension_group: data_do_pagamento___garantia {
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
    sql: ${TABLE}.data_do_pagamento___garantia ;;
  }

  dimension_group: data_e_hora_agendada_entrada_na_oficina___garantia {
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
    sql: ${TABLE}.data_e_hora_agendada_entrada_na_oficina___garantia ;;
  }

  dimension_group: data_e_hora_de_entrada_do_veiculo_na_oficina___garantia {
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
    sql: ${TABLE}.data_e_hora_de_entrada_do_veiculo_na_oficina___garantia ;;
  }

  dimension_group: data_previa_agendada___garantia {
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
    sql: ${TABLE}.data_previa_agendada___garantia ;;
  }

  dimension_group: data_prevista_recebimento_de_peca___garantia {
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
    sql: ${TABLE}.data_prevista_recebimento_de_peca___garantia ;;
  }

  dimension: descricao_do_diagnostico___garantia {
    type: string
    sql: ${TABLE}.descricao_do_diagnostico___garantia ;;
  }

  dimension_group: dt_enter_aguardando_peca_garantia {
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
    sql: ${TABLE}.dt_enter_aguardando_peca_garantia ;;
  }

  dimension_group: dt_enter_aguardando_retorno_da_bosch_garantia {
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
    sql: ${TABLE}.dt_enter_aguardando_retorno_da_bosch_garantia ;;
  }

  dimension_group: dt_enter_diagnostico_do_problema_garantia {
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
    sql: ${TABLE}.dt_enter_diagnostico_do_problema_garantia ;;
  }

  dimension_group: dt_enter_negocio_cancelado_garantia {
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
    sql: ${TABLE}.dt_enter_negocio_cancelado_garantia ;;
  }

  dimension_group: dt_enter_novas_solicitacoes_garantia {
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
    sql: ${TABLE}.dt_enter_novas_solicitacoes_garantia ;;
  }

  dimension_group: dt_enter_oficina_agendada_d_1_garantia {
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
    sql: ${TABLE}.dt_enter_oficina_agendada_d_1_garantia ;;
  }

  dimension_group: dt_enter_oficina_agendada_d_2_garantia {
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
    sql: ${TABLE}.dt_enter_oficina_agendada_d_2_garantia ;;
  }

  dimension_group: dt_enter_oficina_agendada_garantia {
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
    sql: ${TABLE}.dt_enter_oficina_agendada_garantia ;;
  }

  dimension_group: dt_enter_pagamento_realizado___processo_finalizado_garantia {
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
    sql: ${TABLE}.dt_enter_pagamento_realizado___processo_finalizado_garantia ;;
  }

  dimension_group: dt_enter_servico_aprovado_pelo_gestor_garantia {
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
    sql: ${TABLE}.dt_enter_servico_aprovado_pelo_gestor_garantia ;;
  }

  dimension_group: dt_enter_servico_concluido_garantia {
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
    sql: ${TABLE}.dt_enter_servico_concluido_garantia ;;
  }

  dimension_group: dt_enter_solicitacao_de_pagamento_garantia {
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
    sql: ${TABLE}.dt_enter_solicitacao_de_pagamento_garantia ;;
  }

  dimension_group: dt_enter_veiculo_com_entrada_na_oficina_garantia {
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
    sql: ${TABLE}.dt_enter_veiculo_com_entrada_na_oficina_garantia ;;
  }

  dimension_group: dt_enter_veiculo_em_servico_garantia {
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
    sql: ${TABLE}.dt_enter_veiculo_em_servico_garantia ;;
  }

  dimension_group: dt_enter_veiculo_retirado_da_oficina_garantia {
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
    sql: ${TABLE}.dt_enter_veiculo_retirado_da_oficina_garantia ;;
  }

  dimension: e_mail {
    type: string
    sql: ${TABLE}.e_mail ;;
  }

  dimension: fase_do_negocio {
    type: string
    sql: ${TABLE}.fase_do_negocio ;;
  }

  dimension: fotos_e_videos_avarias___garantia {
    type: string
    sql: ${TABLE}.fotos_e_videos_avarias___garantia ;;
  }

  dimension: km_de_retirada {
    type: string
    sql: ${TABLE}.km_de_retirada ;;
  }

  dimension: km_rodados___garantia {
    type: string
    sql: ${TABLE}.km_rodados___garantia ;;
  }

  dimension: link_fotos_videos_das_avarias___garantia {
    type: string
    sql: ${TABLE}.link_fotos_videos_das_avarias___garantia ;;
  }

  dimension: local_de_reparo {
    type: string
    sql: ${TABLE}.local_de_reparo ;;
  }

  dimension: local_de_reparo___garantia {
    type: string
    sql: ${TABLE}.local_de_reparo___garantia ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: motivo___garantia {
    type: string
    sql: ${TABLE}.motivo___garantia ;;
  }

  dimension: motivo_de_cancelamento___garantia {
    type: string
    sql: ${TABLE}.motivo_de_cancelamento___garantia ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  dimension: ponto_de_venda___garantia {
    type: string
    sql: ${TABLE}.ponto_de_venda___garantia ;;
  }

  dimension_group: previsao_de_conclusao_do_servico___garantia {
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
    sql: ${TABLE}.previsao_de_conclusao_do_servico___garantia ;;
  }

  dimension: reclamacao_do_cliente___garantia {
    type: string
    sql: ${TABLE}.reclamacao_do_cliente___garantia ;;
  }

  dimension: responsavel___garantia {
    type: string
    sql: ${TABLE}.responsavel___garantia ;;
  }

  dimension: responsavel_tecnico___garantia {
    type: string
    sql: ${TABLE}.responsavel_tecnico___garantia ;;
  }

  dimension: servico_executado___garantia {
    type: string
    sql: ${TABLE}.servico_executado___garantia ;;
  }

  dimension: tempo_rodado___garantia {
    type: string
    sql: ${TABLE}.tempo_rodado___garantia ;;
  }

  dimension: tipo_de_cliente {
    type: string
    sql: ${TABLE}.tipo_de_cliente ;;
  }

  dimension: tipo_de_servico___garantia {
    type: string
    sql: ${TABLE}.tipo_de_servico___garantia ;;
  }

  dimension: valor_do_servico___garantia {
    type: string
    sql: ${TABLE}.valor_do_servico___garantia ;;
  }

  dimension: valor_do_veiculo___garantia {
    type: string
    sql: ${TABLE}.valor_do_veiculo___garantia ;;
  }

  dimension: versao_do_modelo___garantia {
    type: string
    sql: ${TABLE}.versao_do_modelo___garantia ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
