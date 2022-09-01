view: crm_pos_vendas {
  sql_table_name: `volanty-production.views.CRM_Pos_Vendas`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: _prioridade {
    type: string
    sql: ${TABLE}._prioridade ;;
  }

  dimension: adesivo_ano_do_carro_compras {
    type: string
    sql: ${TABLE}.adesivo_ano_do_carro_compras ;;
  }

  dimension: adesivo_carro_higienizado_compras {
    type: string
    sql: ${TABLE}.adesivo_carro_higienizado_compras ;;
  }

  dimension: adesivo_do_logo_volanty_branco_compras {
    type: string
    sql: ${TABLE}.adesivo_do_logo_volanty_branco_compras ;;
  }

  dimension: adesivo_do_logo_volanty_laranja_compras {
    type: string
    sql: ${TABLE}.adesivo_do_logo_volanty_laranja_compras ;;
  }

  dimension: adesivo_revisao_compras {
    type: string
    sql: ${TABLE}.adesivo_revisao_compras ;;
  }

  dimension: ano_de_fabricacao {
    type: string
    sql: ${TABLE}.ano_de_fabricacao ;;
  }

  dimension: ano_do_veiculo {
    type: string
    sql: ${TABLE}.ano_do_veiculo ;;
  }

  dimension: area_solicitante {
    type: string
    sql: ${TABLE}.area_solicitante ;;
  }

  dimension: at___comentarios {
    type: string
    sql: ${TABLE}.at___comentarios ;;
  }

  dimension: at___motivo {
    type: string
    sql: ${TABLE}.at___motivo ;;
  }

  dimension: at___status_do_atendimento {
    type: string
    sql: ${TABLE}.at___status_do_atendimento ;;
  }

  dimension: at_canal_de_entrada {
    type: string
    sql: ${TABLE}.at_canal_de_entrada ;;
  }

  dimension: at_tipo_de_solicitacao {
    type: string
    sql: ${TABLE}.at_tipo_de_solicitacao ;;
  }

  dimension: beneficios {
    type: string
    sql: ${TABLE}.beneficios ;;
  }

  dimension: capa_descartavel_dos_bancos_compras {
    type: string
    sql: ${TABLE}.capa_descartavel_dos_bancos_compras ;;
  }

  dimension: carro_de_interesse_esta_disponivel {
    type: string
    sql: ${TABLE}.carro_de_interesse_esta_disponivel ;;
  }

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
  }

  dimension: cav_para_visita {
    type: string
    sql: ${TABLE}.cav_para_visita ;;
  }

  dimension: cliente_optou_pelo_servico_de_despachante_ {
    type: string
    sql: ${TABLE}.cliente_optou_pelo_servico_de_despachante_ ;;
  }

  dimension: cobre_placas_compras {
    type: string
    sql: ${TABLE}.cobre_placas_compras ;;
  }

  dimension: codigo_de_rastreio_correios {
    type: string
    sql: ${TABLE}.codigo_de_rastreio_correios ;;
  }

  dimension: compra_emergencial {
    type: string
    sql: ${TABLE}.compra_emergencial ;;
  }

  dimension: confirmacao_do_financeiro {
    type: string
    sql: ${TABLE}.confirmacao_do_financeiro ;;
  }

  dimension: contato {
    type: string
    sql: ${TABLE}.contato ;;
  }

  dimension: contato_com_sucesso {
    type: string
    sql: ${TABLE}.contato_com_sucesso ;;
  }

  dimension: cpf {
    type: string
    sql: ${TABLE}.cpf ;;
  }

  dimension: cpf2 {
    type: string
    sql: ${TABLE}.cpf2 ;;
  }


  dimension: criado_em {
    type: string
    sql: ${TABLE}.criado_em ;;
  }

  dimension: criado_em_timestamp {
    type: number
    sql: ${TABLE}.criado_em_timestamp ;;
  }

  dimension: criado_por {
    type: string
    sql: ${TABLE}.criado_por ;;
  }

  dimension: data_da_ocorrencia {
    type: string
    sql: ${TABLE}.data_da_ocorrencia ;;
  }

  dimension: data_da_ocorrencia_timestamp {
    type: number
    sql: ${TABLE}.data_da_ocorrencia_timestamp ;;
  }

  dimension: data_de_entrega_do_veiculo {
    type: string
    sql: ${TABLE}.data_de_entrega_do_veiculo ;;
  }

  dimension: data_de_entrega_do_veiculo_timestamp {
    type: number
    sql: ${TABLE}.data_de_entrega_do_veiculo_timestamp ;;
  }

  dimension: data_de_inicio {
    type: string
    sql: ${TABLE}.data_de_inicio ;;
  }

  dimension: data_de_inicio_timestamp {
    type: number
    sql: ${TABLE}.data_de_inicio_timestamp ;;
  }

  dimension: data_de_liberacao_financiamento_post {
    type: string
    sql: ${TABLE}.data_de_liberacao_financiamento_post ;;
  }

  dimension: data_de_liberacao_financiamento_post_timestamp {
    type: number
    sql: ${TABLE}.data_de_liberacao_financiamento_post_timestamp ;;
  }

  dimension: data_de_nascimento {
    type: string
    sql: ${TABLE}.data_de_nascimento ;;
  }

  dimension: data_de_nascimento_timestamp {
    type: number
    sql: ${TABLE}.data_de_nascimento_timestamp ;;
  }

  dimension: data_de_pagamento_da_entrada {
    type: string
    sql: ${TABLE}.data_de_pagamento_da_entrada ;;
  }

  dimension: data_de_pagamento_da_entrada_timestamp {
    type: number
    sql: ${TABLE}.data_de_pagamento_da_entrada_timestamp ;;
  }

  dimension: data_de_previsao_de_entrega_veiculo {
    type: string
    sql: ${TABLE}.data_de_previsao_de_entrega_veiculo ;;
  }

  dimension: data_de_previsao_de_entrega_veiculo_timestamp {
    type: number
    sql: ${TABLE}.data_de_previsao_de_entrega_veiculo_timestamp ;;
  }

  dimension: data_de_termino {
    type: string
    sql: ${TABLE}.data_de_termino ;;
  }

  dimension: data_de_termino_timestamp {
    type: number
    sql: ${TABLE}.data_de_termino_timestamp ;;
  }

  dimension: data_do_contrato {
    type: string
    sql: ${TABLE}.data_do_contrato ;;
  }

  dimension: data_do_contrato_timestamp {
    type: number
    sql: ${TABLE}.data_do_contrato_timestamp ;;
  }

  dimension: data_e_hora_da_atribuicao_responsavel {
    type: string
    sql: ${TABLE}.data_e_hora_da_atribuicao_responsavel ;;
  }

  dimension: data_e_hora_da_atribuicao_responsavel_timestamp {
    type: number
    sql: ${TABLE}.data_e_hora_da_atribuicao_responsavel_timestamp ;;
  }

  dimension: data_exportacao {
    type: string
    sql: ${TABLE}.data_exportacao ;;
  }

  dimension: data_exportacao_timestamp {
    type: number
    sql: ${TABLE}.data_exportacao_timestamp ;;
  }

  dimension: data_hora_primeiro_contato {
    type: string
    sql: ${TABLE}.data_hora_primeiro_contato ;;
  }

  dimension: data_hora_primeiro_contato_timestamp {
    type: number
    sql: ${TABLE}.data_hora_primeiro_contato_timestamp ;;
}

  dimension: datahora_da_visita {
    type: string
    sql: ${TABLE}.datahora_da_visita ;;
  }

  dimension: datahora_da_visita_timestamp {
    type: number
    sql: ${TABLE}.datahora_da_visita_timestamp ;;
  }

  dimension: ddd_do_contato {
    type: string
    sql: ${TABLE}.ddd_do_contato ;;
  }

  dimension: departamento {
    type: string
    sql: ${TABLE}.departamento ;;
  }

  dimension: deseja_financiar {
    type: string
    sql: ${TABLE}.deseja_financiar ;;
  }

  dimension: disponivel_para_todos {
    type: string
    sql: ${TABLE}.disponivel_para_todos ;;
  }

  dimension: dt_ente_atendimento_pos__pos_vendas {
    type: string
    sql: ${TABLE}.dt_ente_atendimento_pos__pos_vendas ;;
  }

  dimension: dt_ente_atendimento_pos__pos_vendas_timestamp {
    type: number
    sql: ${TABLE}.dt_ente_atendimento_pos__pos_vendas_timestamp ;;
  }

  dimension: dt_ente_finalizados__pos_vendas {
    type: string
    sql: ${TABLE}.dt_ente_finalizados__pos_vendas ;;
  }

  dimension: dt_ente_finalizados__pos_vendas_timestamp {
    type: number
    sql: ${TABLE}.dt_ente_finalizados__pos_vendas_timestamp ;;
  }

  dimension: dt_enter_24h_respostavendas {
    type: string
    sql: ${TABLE}.dt_enter_24h_respostavendas ;;
  }

  dimension: dt_enter_24h_respostavendas_timestamp {
    type: number
    sql: ${TABLE}.dt_enter_24h_respostavendas_timestamp ;;
  }

  dimension: dt_enter_agendada_maior_3_diasvendas {
    type: string
    sql: ${TABLE}.dt_enter_agendada_maior_3_diasvendas ;;
  }

  dimension: dt_enter_agendada_maior_3_diasvendas_timestamp {
    type: number
    sql: ${TABLE}.dt_enter_agendada_maior_3_diasvendas_timestamp ;;
  }

  dimension: dt_enter_atribuir_responsavel_pos_vendas {
    type: string
    sql: ${TABLE}.dt_enter_atribuir_responsavel_pos_vendas ;;
  }

  dimension: dt_enter_atribuir_responsavel_pos_vendas_timestamp {
    type: number
    sql: ${TABLE}.dt_enter_atribuir_responsavel_pos_vendas_timestamp ;;
  }

  dimension: dt_enter_carro_vendidovendas {
    type: string
    sql: ${TABLE}.dt_enter_carro_vendidovendas ;;
  }

  dimension: dt_enter_carro_vendidovendas_timestamp {
    type: number
    sql: ${TABLE}.dt_enter_carro_vendidovendas_timestamp ;;
  }

  dimension: dt_enter_contrato_assinado_pos_vendas {
    type: string
    sql: ${TABLE}.dt_enter_contrato_assinado_pos_vendas ;;
  }

  dimension: dt_enter_contrato_assinado_pos_vendas_timestamp {
    type: number
    sql: ${TABLE}.dt_enter_contrato_assinado_pos_vendas_timestamp ;;
  }

  dimension: dt_enter_entrega_do_veiculo__pos_vendas {
    type: string
    sql: ${TABLE}.dt_enter_entrega_do_veiculo__pos_vendas ;;
  }

  dimension: dt_enter_entrega_do_veiculo__pos_vendas_timestamp {
    type: number
    sql: ${TABLE}.dt_enter_entrega_do_veiculo__pos_vendas_timestamp ;;
  }

  dimension: dt_enter_kit_enviado_pos_vendas {
    type: string
    sql: ${TABLE}.dt_enter_kit_enviado_pos_vendas ;;
  }

  dimension: dt_enter_kit_enviado_pos_vendas_timestamp {
    type: number
    sql: ${TABLE}.dt_enter_kit_enviado_pos_vendas_timestamp ;;
  }

  dimension: dt_enter_negociandovendas {
    type: string
    sql: ${TABLE}.dt_enter_negociandovendas ;;
  }

  dimension: dt_enter_negociandovendas_timestamp {
    type: number
    sql: ${TABLE}.dt_enter_negociandovendas_timestamp ;;
  }

  dimension: dt_enter_negocio_canceladovendas {
    type: string
    sql: ${TABLE}.dt_enter_negocio_canceladovendas ;;
  }

  dimension: dt_enter_negocio_canceladovendas_timestamp {
    type: number
    sql: ${TABLE}.dt_enter_negocio_canceladovendas_timestamp ;;
  }

  dimension: dt_enter_novos_clientesvendas {
    type: string
    sql: ${TABLE}.dt_enter_novos_clientesvendas ;;
  }

  dimension: dt_enter_novos_clientesvendas_timestamp {
    type: number
    sql: ${TABLE}.dt_enter_novos_clientesvendas_timestamp ;;
  }

  dimension: dt_enter_pagamento__pos_vendas {
    type: string
    sql: ${TABLE}.dt_enter_pagamento__pos_vendas ;;
  }

  dimension: dt_enter_pagamento__pos_vendas_timestamp {
    type: number
    sql: ${TABLE}.dt_enter_pagamento__pos_vendas_timestamp ;;
  }

  dimension: dt_enter_portaisvendas {
    type: string
    sql: ${TABLE}.dt_enter_portaisvendas ;;
  }

  dimension: dt_enter_portaisvendas_timestamp {
    type: number
    sql: ${TABLE}.dt_enter_portaisvendas_timestamp ;;
  }

  dimension: dt_enter_primeiro_contato_pos_vendas {
    type: string
    sql: ${TABLE}.dt_enter_primeiro_contato_pos_vendas ;;
  }

  dimension: dt_enter_primeiro_contato_pos_vendas_timestamp {
    type: number
    sql: ${TABLE}.dt_enter_primeiro_contato_pos_vendas_timestamp ;;
  }

  dimension: dt_enter_resposta_emailwhatsvendas {
    type: string
    sql: ${TABLE}.dt_enter_resposta_emailwhatsvendas ;;
  }

  dimension: dt_enter_resposta_emailwhatsvendas_timestamp {
    type: number
    sql: ${TABLE}.dt_enter_resposta_emailwhatsvendas_timestamp ;;
  }

  dimension: dt_enter_resposta_whats_novosvendas {
    type: string
    sql: ${TABLE}.dt_enter_resposta_whats_novosvendas ;;
  }

  dimension: dt_enter_resposta_whats_novosvendas_timestamp {
    type: number
    sql: ${TABLE}.dt_enter_resposta_whats_novosvendas_timestamp ;;
  }

  dimension: dt_enter_tentativa_contatovendas {
    type: string
    sql: ${TABLE}.dt_enter_tentativa_contatovendas ;;
  }

  dimension: dt_enter_tentativa_contatovendas_timestamp {
    type: number
    sql: ${TABLE}.dt_enter_tentativa_contatovendas_timestamp ;;
  }

  dimension: dt_enter_visita_agendadavendas {
    type: string
    sql: ${TABLE}.dt_enter_visita_agendadavendas ;;
  }

  dimension: dt_enter_visita_agendadavendas_timestamp {
    type: number
    sql: ${TABLE}.dt_enter_visita_agendadavendas_timestamp ;;
  }

  dimension: dt_enter_visita_confirmadavendas {
    type: string
    sql: ${TABLE}.dt_enter_visita_confirmadavendas ;;
  }

  dimension: dt_enter_visita_confirmadavendas_timestamp {
    type: number
    sql: ${TABLE}.dt_enter_visita_confirmadavendas_timestamp ;;
  }

  dimension: dt_enter_visita_perdidavendas {
    type: string
    sql: ${TABLE}.dt_enter_visita_perdidavendas ;;
  }

  dimension: dt_enter_visita_perdidavendas_timestamp {
    type: number
    sql: ${TABLE}.dt_enter_visita_perdidavendas_timestamp ;;
  }

  dimension: dt_enter_visita_realizadavendas {
    type: string
    sql: ${TABLE}.dt_enter_visita_realizadavendas ;;
  }

  dimension: dt_enter_visita_realizadavendas_timestamp {
    type: number
    sql: ${TABLE}.dt_enter_visita_realizadavendas_timestamp ;;
  }

  dimension: elastico_para_cobre_placas_compras {
    type: string
    sql: ${TABLE}.elastico_para_cobre_placas_compras ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: empresa {
    type: string
    sql: ${TABLE}.empresa ;;
  }

  dimension: fase_do_negocio {
    type: string
    sql: ${TABLE}.fase_do_negocio ;;
  }

  dimension: fechado {
    type: string
    sql: ${TABLE}.fechado ;;
  }

  dimension: fechamento_ticket_vendas {
    type: string
    sql: ${TABLE}.fechamento_ticket_vendas ;;
  }

  dimension: financiamento_autofin_liberado {
    type: string
    sql: ${TABLE}.financiamento_autofin_liberado ;;
  }

  dimension: formas_de_pagamento {
    type: string
    sql: ${TABLE}.formas_de_pagamento ;;
  }

  dimension: formas_de_pagamento_da_entrada {
    type: string
    sql: ${TABLE}.formas_de_pagamento_da_entrada ;;
  }

  dimension: gostou_do_preco {
    type: string
    sql: ${TABLE}.gostou_do_preco ;;
  }

  dimension: grupo_de_fase {
    type: string
    sql: ${TABLE}.grupo_de_fase ;;
  }

  dimension: id_da_visita {
    type: string
    sql: ${TABLE}.id_da_visita ;;
  }

  dimension: id_do_veiculo_no_estoque {
    type: string
    sql: ${TABLE}.id_do_veiculo_no_estoque ;;
  }

  dimension: interaction_history {
    type: string
    sql: ${TABLE}.interaction_history ;;
  }

  dimension: is_manual_opportunity {
    type: string
    sql: ${TABLE}.is_manual_opportunity ;;
  }

  dimension: justificativa_desistencia {
    type: string
    sql: ${TABLE}.justificativa_desistencia ;;
  }

  dimension: kit_entrega {
    type: string
    sql: ${TABLE}.kit_entrega ;;
  }

  dimension: km_atual {
    type: string
    sql: ${TABLE}.km_atual ;;
  }

  dimension: km_de_ocorrencia {
    type: string
    sql: ${TABLE}.km_de_ocorrencia ;;
  }

  dimension: link_do_admin {
    type: string
    sql: ${TABLE}.link_do_admin ;;
  }

  dimension: link_do_carro {
    type: string
    sql: ${TABLE}.link_do_carro ;;
  }

  dimension: link_para_agendar_visita {
    type: string
    sql: ${TABLE}.link_para_agendar_visita ;;
  }

  dimension: link_para_agendar_visita_cliente {
    type: string
    sql: ${TABLE}.link_para_agendar_visita_cliente ;;
  }

  dimension: link_whatsapp_creditas_auto {
    type: string
    sql: ${TABLE}.link_whatsapp_creditas_auto ;;
  }

  dimension: manual_de_garantia_guia_rapido_compras {
    type: string
    sql: ${TABLE}.manual_de_garantia_guia_rapido_compras ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: modificado_em {
    type: string
    sql: ${TABLE}.modificado_em ;;
  }

  dimension: modificado_em_timestamp {
    type: number
    sql: ${TABLE}.modificado_em_timestamp ;;
  }

  dimension: modificado_por {
    type: string
    sql: ${TABLE}.modificado_por ;;
  }

  dimension: moeda {
    type: string
    sql: ${TABLE}.moeda ;;
  }

  dimension: motivo___garantia {
    type: string
    sql: ${TABLE}.motivo___garantia ;;
  }

  dimension: motivo___quitacao_de_debitos {
    type: string
    sql: ${TABLE}.motivo___quitacao_de_debitos ;;
  }

  dimension: motivo__documentacao {
    type: string
    sql: ${TABLE}.motivo__documentacao ;;
  }

  dimension: motivo_da_desistencia {
    type: string
    sql: ${TABLE}.motivo_da_desistencia ;;
  }

  dimension: motivo_descontinuado_vendas {
    type: string
    sql: ${TABLE}.motivo_descontinuado_vendas ;;
  }

  dimension: nao_preciso_de_nenhum_item_dessa_secao_compras {
    type: string
    sql: ${TABLE}.nao_preciso_de_nenhum_item_dessa_secao_compras ;;
  }

  dimension: negocio_recorrente {
    type: string
    sql: ${TABLE}.negocio_recorrente ;;
  }

  dimension: negocio_repetido {
    type: string
    sql: ${TABLE}.negocio_repetido ;;
  }

  dimension: nome {
    type: string
    sql: ${TABLE}.nome ;;
  }

  dimension: novo_negocio {
    type: string
    sql: ${TABLE}.novo_negocio ;;
  }

  dimension: novo_responsavel {
    type: string
    sql: ${TABLE}.novo_responsavel ;;
  }

  dimension: observacao2 {
    type: string
    sql: ${TABLE}.observacao2 ;;
  }

  dimension: oferta_de_veiculo {
    type: string
    sql: ${TABLE}.oferta_de_veiculo ;;
  }

  dimension: origem_do_lead {
    type: string
    sql: ${TABLE}.origem_do_lead ;;
  }

  dimension: pendencias_restricoes {
    type: string
    sql: ${TABLE}.pendencias_restricoes ;;
  }

  dimension: pessoa_responsavel {
    type: string
    sql: ${TABLE}.pessoa_responsavel ;;
  }

  dimension: pipeline {
    type: string
    sql: ${TABLE}.pipeline ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  dimension: placa_do_carro_na_visita {
    type: string
    sql: ${TABLE}.placa_do_carro_na_visita ;;
  }

  dimension: plastico_para_o_volante {
    type: string
    sql: ${TABLE}.plastico_para_o_volante ;;
  }

  dimension: probabilidade {
    type: string
    sql: ${TABLE}.probabilidade ;;
  }

  dimension: pv_data_doc_entregue_para_cliente {
    type: string
    sql: ${TABLE}.pv_data_doc_entregue_para_cliente ;;
  }

  dimension: pv_licenciamento_taxa_paga {
    type: string
    sql: ${TABLE}.pv_licenciamento_taxa_paga ;;
  }

  dimension: pv_taxa_de_transferencia_taxa_paga {
    type: string
    sql: ${TABLE}.pv_taxa_de_transferencia_taxa_paga ;;
  }

  dimension: pv_troca_de_placa_taxa_paga {
    type: string
    sql: ${TABLE}.pv_troca_de_placa_taxa_paga ;;
  }

  dimension: qual_a_forma_de_pagamento_do_servico__ {
    type: string
    sql: ${TABLE}.qual_a_forma_de_pagamento_do_servico__ ;;
  }

  dimension: qual_placa_do_veiculo_oferecido {
    type: string
    sql: ${TABLE}.qual_placa_do_veiculo_oferecido ;;
  }

  dimension: reagendamento {
    type: string
    sql: ${TABLE}.reagendamento ;;
  }

  dimension: recompra_ocorrencia_veicular {
    type: string
    sql: ${TABLE}.recompra_ocorrencia_veicular ;;
  }

  dimension: recompra_problemas_financeiros {
    type: string
    sql: ${TABLE}.recompra_problemas_financeiros ;;
  }

  dimension: recompra_veiculo_devolvido_por_restricoes {
    type: string
    sql: ${TABLE}.recompra_veiculo_devolvido_por_restricoes ;;
  }

  dimension: recompra_veiculo_nao_atendeu_expectativa {
    type: string
    sql: ${TABLE}.recompra_veiculo_nao_atendeu_expectativa ;;
  }

  dimension: repetir_consulta {
    type: string
    sql: ${TABLE}.repetir_consulta ;;
  }

  dimension: sacola_de_pertences_do_cliente_compras {
    type: string
    sql: ${TABLE}.sacola_de_pertences_do_cliente_compras ;;
  }

  dimension: selecionado {
    type: string
    sql: ${TABLE}.selecionado ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: status_ativacao_carbee {
    type: string
    sql: ${TABLE}.status_ativacao_carbee ;;
  }

  dimension: status_da_visita {
    type: string
    sql: ${TABLE}.status_da_visita ;;
  }

  dimension: status_do_carro_no_estoque {
    type: string
    sql: ${TABLE}.status_do_carro_no_estoque ;;
  }

  dimension: tag_de_retrovisor_carro_inspecionado_e_revisado_compras {
    type: string
    sql: ${TABLE}.tag_de_retrovisor_carro_inspecionado_e_revisado_compras ;;
  }

  dimension: tag_de_retrovisor_check_da_oficina_compras {
    type: string
    sql: ${TABLE}.tag_de_retrovisor_check_da_oficina_compras ;;
  }

  dimension: tapete_de_papel_compras {
    type: string
    sql: ${TABLE}.tapete_de_papel_compras ;;
  }

  dimension: taxa_de_imposto {
    type: string
    sql: ${TABLE}.taxa_de_imposto ;;
  }

  dimension: telefone {
    type: string
    sql: ${TABLE}.telefone ;;
  }

  dimension: tem_interesse_na_avaliacao_em_domicilio {
    type: string
    sql: ${TABLE}.tem_interesse_na_avaliacao_em_domicilio ;;
  }

  dimension: tem_veiculo_na_troca {
    type: string
    sql: ${TABLE}.tem_veiculo_na_troca ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }

  dimension: tipo_de_cliente {
    type: string
    sql: ${TABLE}.tipo_de_cliente ;;
  }

  dimension: tipo_de_visita {
    type: string
    sql: ${TABLE}.tipo_de_visita ;;
  }

  dimension: total {
    type: string
    sql: ${TABLE}.total ;;
  }

  dimension: utm_campanha {
    type: string
    sql: ${TABLE}.utm_campanha ;;
  }

  dimension: utm_fonte {
    type: string
    sql: ${TABLE}.utm_fonte ;;
  }

  dimension: utm_midia {
    type: string
    sql: ${TABLE}.utm_midia ;;
  }

  dimension: valor_da_entrada {
    type: string
    sql: ${TABLE}.valor_da_entrada ;;
  }

  dimension: valor_total_da_venda {
    type: string
    sql: ${TABLE}.valor_total_da_venda ;;
  }

  dimension: valor_visto_no_anuncio {
    type: string
    sql: ${TABLE}.valor_visto_no_anuncio ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
