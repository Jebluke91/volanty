view: crm_garantia {
  sql_table_name: `volanty-production.views.CRM_Garantia`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: ano_do_veiculo {
    type: string
    sql: ${TABLE}.ano_do_veiculo ;;
  }

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
  }

  dimension: cpf {
    type: string
    sql: ${TABLE}.cpf ;;
  }

  dimension: criado_em {
    type: string
    sql: ${TABLE}.criado_em ;;
  }

  dimension: fase_do_negocio {
    type: string
    sql: ${TABLE}.fase_do_negocio ;;
  }


  dimension: data_da_entrega_do_diagnostico___garantia {
    type: string
    sql: ${TABLE}.data_da_entrega_do_diagnostico___garantia ;;
  }

  dimension: data_de_aprovacao_do_servico___garantia {
    type: string
    sql: ${TABLE}.data_de_aprovacao_do_servico___garantia ;;
  }

  dimension: data_de_conclusao_do_servico___garantia {
    type: string
    sql: ${TABLE}.data_de_conclusao_do_servico___garantia ;;
  }

  dimension: data_de_envio_da_solicitacao_de_pagamento___garantia {
    type: string
    sql: ${TABLE}.data_de_envio_da_solicitacao_de_pagamento___garantia ;;
  }

  dimension: data_inicio_servico {
    type: string
    sql: ${TABLE}.data_inicio_servico ;;
  }

  dimension: data_de_retirada_do_veiculo_da_oficina___garantia {
    type: string
    sql: ${TABLE}.data_de_retirada_do_veiculo_da_oficina___garantia ;;
  }

  dimension: data_do_pagamento___garantia {
    type: string
    sql: ${TABLE}.data_do_pagamento___garantia ;;
  }

  dimension: data_e_hora_agendada_entrada_na_oficina___garantia {
    type: string
    sql: ${TABLE}.data_e_hora_agendada_entrada_na_oficina___garantia ;;
  }

  dimension: data_e_hora_de_entrada_do_veiculo_na_oficina___garantia {
    type: string
    sql: ${TABLE}.data_e_hora_de_entrada_do_veiculo_na_oficina___garantia ;;
  }

  dimension: descricao_do_diagnostico___garantia {
    type: string
    sql: ${TABLE}.descricao_do_diagnostico___garantia ;;
  }

  dimension: dt_enter_aguardando_retorno_da_bosch_garantia {
    type: string
    sql: ${TABLE}.dt_enter_aguardando_retorno_da_bosch_Garantia ;;
  }

  dimension: dt_enter_diagnostico_do_problema_garantia {
    type: string
    sql: ${TABLE}.dt_enter_diagnostico_do_problema_garantia ;;
  }

  dimension: dt_enter_novas_solicitacoes_garantia {
    type: string
    sql: ${TABLE}.dt_enter_novas_solicitacoes_garantia ;;
  }

  dimension: dt_enter_oficina_agendada_garantia {
    type: string
    sql: ${TABLE}.dt_enter_oficina_agendada_garantia ;;
  }

  dimension: dt_enter_pagamento_realizado___processo_finalizado_garantia {
    type: string
    sql: ${TABLE}.dt_enter_pagamento_realizado___processo_finalizado_garantia ;;
  }

  dimension: dt_enter_servico_aprovado_pelo_gestor_garantia {
    type: string
    sql: ${TABLE}.dt_enter_servico_aprovado_pelo_gestor_garantia ;;
  }

  dimension: dt_enter_servico_concluido_garantia {
    type: string
    sql: ${TABLE}.dt_enter_servico_concluido_garantia ;;
  }

  dimension: dt_enter_solicitacao_de_pagamento_garantia {
    type: string
    sql: ${TABLE}.dt_enter_solicitacao_de_pagamento_garantia ;;
  }

  dimension: dt_enter_veiculo_com_entrada_na_oficina_garantia {
    type: string
    sql: ${TABLE}.dt_enter_veiculo_com_entrada_na_oficina_garantia ;;
  }

  dimension: dt_enter_veiculo_em_servico_garantia {
    type: string
    sql: ${TABLE}.dt_enter_veiculo_em_servico_garantia ;;
  }

  dimension: dt_enter_veiculo_retirado_da_oficina_garantia {
    type: string
    sql: ${TABLE}.dt_enter_veiculo_retirado_da_oficina_garantia ;;
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

  dimension: previsao_de_conclusao_do_servico___garantia {
    type: string
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

  dimension: tempo_rodado {
    type: string
    sql: ${TABLE}.tempo_rodado ;;
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

  measure: count {
    type: count
    drill_fields: [id]
  }
}
