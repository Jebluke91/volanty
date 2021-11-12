view: crm_creditas_acquisition {
  sql_table_name: `volanty-production.views.CRM_Creditas_Acquisition`
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

  dimension: ano_de_fabricacao {
    type: string
    sql: ${TABLE}.ano_de_fabricacao ;;
  }

  dimension: ano_do_veiculo {
    type: string
    sql: ${TABLE}.ano_do_veiculo ;;
  }

  dimension: cav_de_origem {
    type: string
    sql: ${TABLE}.cav_de_origem ;;
  }

  dimension: contato {
    type: string
    sql: ${TABLE}.contato ;;
  }

  dimension: contato_com_sucesso {
    type: string
    sql: ${TABLE}.contato_com_sucesso ;;
  }

  dimension: contato_email {
    type: string
    sql: ${TABLE}.contato_email ;;
  }

  dimension: contato_nome {
    type: string
    sql: ${TABLE}.contato_nome ;;
  }

  dimension: cor {
    type: string
    sql: ${TABLE}.cor ;;
  }

  dimension: criado_em {
    type: string
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
      date,
      week,
      month,
      quarter,
      year
    ]
    }

  dimension: data_de_termino {
    type: string
    sql: ${TABLE}.data_de_termino ;;
  }

  dimension: data_exportacao {
    type: string
    sql: ${TABLE}.data_exportacao ;;
  }

  dimension: datahora_da_avaliacao {
    type: string
    sql: ${TABLE}.datahora_da_avaliacao ;;
  }

  dimension: datahora_da_avaliacao_turno {
    type: string
    sql: ${TABLE}.datahora_da_avaliacao_turno ;;
  }

  dimension: datahora_da_visita {
    type: string
    sql: ${TABLE}.datahora_da_visita ;;
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

  dimension: dt_enter_avaliacao_agendadaaquisicao {
    type: string
    sql: ${TABLE}.dt_enter_avaliacao_agendadaaquisicao ;;
  }

  dimension: dt_enter_avaliacao_confirmadaaquisicao {
    type: string
    sql: ${TABLE}.dt_enter_avaliacao_confirmadaaquisicao ;;
  }

  dimension: dt_enter_avaliacoes_canceladasaquisicao {
    type: string
    sql: ${TABLE}.dt_enter_avaliacoes_canceladasaquisicao ;;
  }

  dimension: dt_enter_confirmar_avaliacaoaquisicao {
    type: string
    sql: ${TABLE}.dt_enter_confirmar_avaliacaoaquisicao ;;
  }

  dimension: dt_enter_contato_sem_sucessoaquisicao {
    type: string
    sql: ${TABLE}.dt_enter_contato_sem_sucessoaquisicao ;;
  }

  dimension: dt_enter_formsaquisicao {
    type: string
    sql: ${TABLE}.dt_enter_formsaquisicao ;;
  }

  dimension: dt_enter_negociando_avaliacaoaquisicao {
    type: string
    sql: ${TABLE}.dt_enter_negociando_avaliacaoaquisicao ;;
  }

  dimension: dt_enter_negocios_ganhosaquisicao {
    type: string
    sql: ${TABLE}.dt_enter_negocios_ganhosaquisicao ;;
  }

  dimension: dt_enter_negocios_perdidosaquisicao {
    type: string
    sql: ${TABLE}.dt_enter_negocios_perdidosaquisicao ;;
  }

  dimension: dt_enter_no_showaquisicao {
    type: string
    sql: ${TABLE}.dt_enter_no_showaquisicao ;;
  }

  dimension: dt_enter_resposta_emailaquisicao {
    type: string
    sql: ${TABLE}.dt_enter_resposta_emailaquisicao ;;
  }

  dimension: dt_entrada_avaliacao_agendada {
    type: string
    sql: ${TABLE}.dt_entrada_avaliacao_agendada ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: email_do_cliente {
    type: string
    sql: ${TABLE}.email_do_cliente ;;
  }

  dimension: empresa {
    type: string
    sql: ${TABLE}.empresa ;;
  }

  dimension: faixas_de_idade_dos_tickets_sem_resolucao {
    type: string
    sql: ${TABLE}.faixas_de_idade_dos_tickets_sem_resolucao ;;
  }

  dimension: faixas_de_tempo_total_de_resolucao {
    type: string
    sql: ${TABLE}.faixas_de_tempo_total_de_resolucao ;;
  }

  dimension: fase_do_negocio {
    type: string
    sql: ${TABLE}.fase_do_negocio ;;
  }

  dimension: fechado {
    type: string
    sql: ${TABLE}.fechado ;;
  }

  dimension: fonte {
    type: string
    sql: ${TABLE}.fonte ;;
  }

  dimension: gostou_do_preco {
    type: string
    sql: ${TABLE}.gostou_do_preco ;;
  }

  dimension: grupo_de_fase {
    type: string
    sql: ${TABLE}.grupo_de_fase ;;
  }

  dimension: hora_da_avaliacao {
    type: string
    sql: ${TABLE}.hora_da_avaliacao ;;
  }

  dimension: indicacao {
    type: string
    sql: ${TABLE}.indicacao ;;
  }

  dimension: informacoes_da_fonte {
    type: string
    sql: ${TABLE}.informacoes_da_fonte ;;
  }

  dimension: interesse {
    type: string
    sql: ${TABLE}.interesse ;;
  }

  dimension: is_manual_opportunity {
    type: string
    sql: ${TABLE}.is_manual_opportunity ;;
  }

  dimension: km_atual {
    type: string
    sql: ${TABLE}.km_atual ;;
  }

  dimension: lead_id {
    type: string
    sql: ${TABLE}.lead_id ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: maximo_preco_compra {
    type: string
    sql: ${TABLE}.maximo_preco_compra ;;
  }

  dimension: minimo_preco_compra {
    type: string
    sql: ${TABLE}.minimo_preco_compra ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: modelo_de_aquisicao {
    type: string
    sql: ${TABLE}.modelo_de_aquisicao ;;
  }

  dimension: modificado_em {
    type: string
    sql: ${TABLE}.modificado_em ;;
  }

  dimension: modificado_por {
    type: string
    sql: ${TABLE}.modificado_por ;;
  }

  dimension: moeda {
    type: string
    sql: ${TABLE}.moeda ;;
  }

  dimension: motivo_descontinuado_aquisicao {
    type: string
    sql: ${TABLE}.motivo_descontinuado_aquisicao ;;
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

  dimension: origem {
    type: string
    sql: ${TABLE}.origem ;;
  }

  dimension: origem_do_lead {
    type: string
    sql: ${TABLE}.origem_do_lead ;;
  }

  dimension: pessoa_responsavel {
    type: string
    sql: ${TABLE}.pessoa_responsavel ;;
  }

  dimension: pessoa_responsavel_celular {
    type: string
    sql: ${TABLE}.pessoa_responsavel_celular ;;
  }

  dimension: pessoa_responsavel_email {
    type: string
    sql: ${TABLE}.pessoa_responsavel_email ;;
  }

  dimension: pessoa_responsavel_nome {
    type: string
    sql: ${TABLE}.pessoa_responsavel_nome ;;
  }

  dimension: pipeline {
    type: string
    sql: ${TABLE}.pipeline ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.placa ;;
  }

  dimension: placa_l {
    type: string
    sql: ${TABLE}.placa_l ;;
  }

  dimension: pv_licenciamento_taxa_paga {
    type: string
    sql: ${TABLE}.pv_licenciamento_taxa_paga ;;
  }

  dimension: reagendamento {
    type: string
    sql: ${TABLE}.reagendamento ;;
  }

  dimension: repetir_consulta {
    type: string
    sql: ${TABLE}.repetir_consulta ;;
  }

  dimension: selecionado {
    type: string
    sql: ${TABLE}.selecionado ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: status_da_avaliacao {
    type: string
    sql: ${TABLE}.status_da_avaliacao ;;
  }

  dimension: taxa_de_imposto {
    type: string
    sql: ${TABLE}.taxa_de_imposto ;;
  }

  dimension: telefone {
    type: string
    sql: ${TABLE}.telefone ;;
  }

  dimension: tem_veiculo_na_troca {
    type: string
    sql: ${TABLE}.tem_veiculo_na_troca ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }

  dimension: total {
    type: string
    sql: ${TABLE}.total ;;
  }

  dimension: utm_campanha {
    type: string
    sql: ${TABLE}.utm_campanha ;;
  }

  dimension: utm_conteudo {
    type: string
    sql: ${TABLE}.utm_conteudo ;;
  }

  dimension: utm_fonte {
    type: string
    sql: ${TABLE}.utm_fonte ;;
  }

  dimension: utm_midia {
    type: string
    sql: ${TABLE}.utm_midia ;;
  }

  dimension: versao {
    type: string
    sql: ${TABLE}.versao ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
