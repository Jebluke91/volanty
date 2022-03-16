view: crm_creditas_vendas {
  sql_table_name: `volanty-production.views.CRM_Creditas_Vendas`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: ano_de_fabricacao {
    type: string
    sql: ${TABLE}.ano_de_fabricacao ;;
  }

  dimension: ano_do_veiculo {
    type: string
    sql: ${TABLE}.ano_do_veiculo ;;
  }

  dimension: canal {
    type: string
    sql: ${TABLE}.canal ;;
  }

  dimension: carro_de_interesse_esta_disponivel {
    type: string
    sql: ${TABLE}.carro_de_interesse_esta_disponivel ;;
  }

  dimension: cav {
    type: string
    sql: ${TABLE}.cav ;;
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

  dimension: cpf {
    type: string
    sql: ${TABLE}.cpf ;;
  }

  dimension_group: criado_em {
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
    convert_tz: no
    datatype: date
    sql: ${TABLE}.data_de_inicio ;;
  }



  dimension_group: data_de_termino {
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
    sql: ${TABLE}.data_de_termino ;;
  }



  dimension: data_exportacao {
    type: string
    sql: ${TABLE}.data_exportacao ;;
  }

  dimension: datahora_da_visita {
    type: string
    sql: ${TABLE}.datahora_da_visita ;;
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


  dimension_group: dt_enter_carro_vendidovendas {
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
    sql: ${TABLE}.dt_enter_carro_vendidovendas ;;
  }



  dimension_group: dt_enter_negociandovendas {
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
    sql: ${TABLE}.dt_enter_negociandovendas ;;
  }


  dimension_group: dt_enter_novos_clientesvendas {
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
    sql: ${TABLE}.dt_enter_novos_clientesvendas ;;
  }


  dimension_group: dt_enter_tentativa_contatovendas {
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
    sql: ${TABLE}.dt_enter_tentativa_contatovendas ;;
  }


  dimension_group: dt_enter_visita_agendadavendas {
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
    sql: ${TABLE}.dt_enter_visita_agendadavendas ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
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

  dimension: fechamento_ticket_vendas {
    type: string
    sql: ${TABLE}.fechamento_ticket_vendas ;;
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

  dimension: km_atual {
    type: string
    sql: ${TABLE}.km_atual ;;
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

  dimension: modificado_por {
    type: string
    sql: ${TABLE}.modificado_por ;;
  }

  dimension: moeda {
    type: string
    sql: ${TABLE}.moeda ;;
  }

  dimension: motivo_descontinuado_vendas {
    type: string
    sql: ${TABLE}.motivo_descontinuado_vendas ;;
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

  dimension: observacao2 {
    type: string
    sql: ${TABLE}.observacao2 ;;
  }

  dimension: origem_atendimento {
    type: string
    sql: ${TABLE}.origem_atendimento ;;
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

  dimension: placa_do_carro_na_visita {
    type: string
    sql: ${TABLE}.placa_do_carro_na_visita ;;
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

  dimension: status_da_visita {
    type: string
    sql: ${TABLE}.status_da_visita ;;
  }

  dimension: status_do_carro_no_estoque {
    type: string
    sql: ${TABLE}.status_do_carro_no_estoque ;;
  }

  dimension: taxa_de_imposto {
    type: string
    sql: ${TABLE}.taxa_de_imposto ;;
  }

  dimension: telefone {
    type: string
    sql: ${TABLE}.telefone ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }

  dimension: tipo_de_financiamento_desejado {
    type: string
    sql: ${TABLE}.tipo_de_financiamento_desejado ;;
  }

  dimension: tipo_de_visita {
    type: string
    sql: ${TABLE}.tipo_de_visita ;;
  }

  dimension: total {
    type: string
    sql: ${TABLE}.total ;;
  }

  dimension: uf {
    type: string
    sql: ${TABLE}.UF ;;
  }

  dimension: uf_de_residencia {
    type: string
    sql: ${TABLE}.uf_de_residencia ;;
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

  dimension: valor_visto_no_anuncio {
    type: string
    sql: ${TABLE}.valor_visto_no_anuncio ;;
  }

  dimension: responsavel_categorizado {
    type: string
    sql: ${TABLE}.responsavel_categorizado ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
