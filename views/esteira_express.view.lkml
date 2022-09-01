view: esteira_express {
  sql_table_name: `volanty-production.spreedsheets_data.Esteira Express`
    ;;

  dimension: __d__vida_ativa_e_ou_dpvat {
    type: string
    sql: ${TABLE}.__D__vida_ativa_e_ou_DPVAT ;;
  }

  dimension: __ipva {
    type: string
    sql: ${TABLE}.__IPVA ;;
  }

  dimension: __licenciamento {
    type: string
    sql: ${TABLE}.__Licenciamento ;;
  }

  dimension: __multas {
    type: string
    sql: ${TABLE}.__Multas ;;
  }

  dimension: adimplente_inadimplente {
    type: string
    sql: ${TABLE}.Adimplente_Inadimplente ;;
  }

  dimension: aliena____o__fin_ou_re_fin_ {
    type: string
    sql: ${TABLE}.Aliena____o__Fin_ou_ReFin_ ;;
  }

  dimension: analista {
    type: string
    sql: ${TABLE}.Analista ;;
  }

  dimension: ano {
    type: number
    sql: ${TABLE}.Ano ;;
  }

  dimension: atualiza____o_dut___800_00____duda__r__192_26_ {
    type: string
    sql: ${TABLE}.Atualiza____o_DUT___800_00____Duda__R__192_26_ ;;
  }

  dimension: bancos {
    type: string
    sql: ${TABLE}.Bancos ;;
  }

  dimension: blindadora__caso_ve__culo_blindado_ {
    type: string
    sql: ${TABLE}.Blindadora__caso_ve__culo_blindado_ ;;
  }

  dimension: c__mbio {
    type: string
    sql: ${TABLE}.C__mbio ;;
  }

  dimension_group: carimbo_de_data_hora {
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
    sql: ${TABLE}.Carimbo_de_data_hora ;;
  }

  dimension: cliente_aceitou_a_proposta {
    type: string
    sql: ${TABLE}.Cliente_aceitou_a_proposta ;;
  }

  dimension: cnpj {
    type: string
    sql: ${TABLE}.CNPJ ;;
  }

  dimension: combust__vel_ {
    type: string
    sql: ${TABLE}.Combust__vel_ ;;
  }

  dimension: condi____es_de_funilaria {
    type: string
    sql: ${TABLE}.Condi____es_de_funilaria ;;
  }

  dimension: condi____es_do_motor {
    type: string
    sql: ${TABLE}.Condi____es_do_motor ;;
  }

  dimension: condi____es_dos_pneus {
    type: string
    sql: ${TABLE}.Condi____es_dos_pneus ;;
  }

  dimension: consta_gravame_ {
    type: string
    sql: ${TABLE}.Consta_gravame_ ;;
  }

  dimension: consta_inten____o_de_gravame_ {
    type: string
    sql: ${TABLE}.Consta_inten____o_de_gravame_ ;;
  }

  dimension: consta_leil__o__sinistro__roubo_ou_furto_ {
    type: string
    sql: ${TABLE}.Consta_leil__o__sinistro__roubo_ou_furto_ ;;
  }

  dimension: consta_outra_restri____o_ {
    type: string
    sql: ${TABLE}.Consta_outra_restri____o_ ;;
  }

  dimension: consultor_respons__vel {
    type: string
    sql: ${TABLE}.Consultor_Respons__vel ;;
  }

  dimension: cor {
    type: string
    sql: ${TABLE}.Cor ;;
  }

  dimension: data_agenda_para_retirada {
    type: string
    sql: ${TABLE}.Data_agenda_para_retirada ;;
  }

  dimension_group: data_da_consulta {
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
    sql: ${TABLE}.Data_da_consulta ;;
  }

  dimension: data_de_entrada_na_loja_ {
    type: string
    sql: ${TABLE}.Data_de_entrada_na_loja_ ;;
  }

  dimension: data_retirada_lojista {
    type: string
    sql: ${TABLE}.Data_retirada_Lojista ;;
  }

  dimension: detalhes_relevantes_para_a_avalia____o__avarias_ {
    type: string
    sql: ${TABLE}.Detalhes_relevantes_para_a_avalia____o__avarias_ ;;
  }

  dimension: e_mail_do_lojista {
    type: string
    sql: ${TABLE}.E_mail_do_Lojista ;;
  }

  dimension: endere__o_de_e_mail {
    type: string
    sql: ${TABLE}.Endere__o_de_e_mail ;;
  }

  dimension: endere__o_lojista {
    type: string
    sql: ${TABLE}.Endere__o_Lojista ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.Estado ;;
  }

  dimension: fotos_do_ve__culo__documento__foto_em_45___dianteira_lateral__foto_em_45___traseira_lateral__painel_com_km_ {
    type: string
    sql: ${TABLE}.Fotos_do_ve__culo__documento__foto_em_45___dianteira_lateral__foto_em_45___traseira_lateral__painel_com_km_ ;;
  }

  dimension: fundo {
    type: string
    sql: ${TABLE}.Fundo ;;
  }

  dimension: inspetor_respons__vel {
    type: string
    sql: ${TABLE}.Inspetor_Respons__vel ;;
  }

  dimension: km {
    type: string
    sql: ${TABLE}.Km ;;
  }

  dimension: loja {
    type: string
    sql: ${TABLE}.Loja ;;
  }

  dimension: loja_ {
    type: string
    sql: ${TABLE}.Loja_ ;;
  }

  dimension: lojista_recebeu_o_feedback_ {
    type: string
    sql: ${TABLE}.Lojista_recebeu_o_Feedback_ ;;
  }

  dimension: lugares {
    type: number
    sql: ${TABLE}.Lugares ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.Marca ;;
  }

  dimension: marca_dos_vidros__caso_ve__culo_blindado_ {
    type: string
    sql: ${TABLE}.Marca_dos_vidros__caso_ve__culo_blindado_ ;;
  }

  dimension: modelo_vers__o {
    type: string
    sql: ${TABLE}.Modelo_Vers__o ;;
  }

  dimension: n___da_ccb {
    type: string
    sql: ${TABLE}.N___da_CCB ;;
  }

  dimension: n__vel_da_blindagem__caso_ve__culo_blindado_ {
    type: string
    sql: ${TABLE}.N__vel_da_blindagem__caso_ve__culo_blindado_ ;;
  }

  dimension: nome_do_lojista {
    type: string
    sql: ${TABLE}.Nome_do_Lojista ;;
  }

  dimension: observa____es {
    type: string
    sql: ${TABLE}.Observa____es ;;
  }

  dimension: opcionais {
    type: string
    sql: ${TABLE}.Opcionais ;;
  }

  dimension: placa__modelo__xxx_xxxx_ {
    type: string
    sql: ${TABLE}.Placa__Modelo__XXX_XXXX_ ;;
  }

  dimension: placa_do_carro_creditas_que_o_cliente_est___interessado__xxx_xxxx_ {
    type: string
    sql: ${TABLE}.Placa_do_carro_Creditas_que_o_cliente_est___interessado__XXX_XXXX_ ;;
  }

  dimension: pontua____o {
    type: number
    sql: ${TABLE}.Pontua____o ;;
  }

  dimension: possui_chave_reserva_ {
    type: string
    sql: ${TABLE}.Possui_chave_reserva_ ;;
  }

  dimension: possui_manual_ {
    type: string
    sql: ${TABLE}.Possui_manual_ ;;
  }

  dimension: proposta_do_lojista {
    type: string
    sql: ${TABLE}.Proposta_do_Lojista ;;
  }

  dimension: propriet__rio {
    type: string
    sql: ${TABLE}.Propriet__rio ;;
  }

  dimension: qual_financeira_ {
    type: string
    sql: ${TABLE}.Qual_financeira_ ;;
  }

  dimension: quantidade_de_vidros_delaminados__caso_ve__culo_blindado_ {
    type: number
    sql: ${TABLE}.Quantidade_de_vidros_delaminados__caso_ve__culo_blindado_ ;;
  }

  dimension: tabela_fipe {
    type: string
    sql: ${TABLE}.Tabela_Fipe ;;
  }

  dimension: total_financiado_creditas_ {
    type: string
    sql: ${TABLE}.Total_financiado_Creditas_ ;;
  }

  dimension: uf_do_veic {
    type: string
    sql: ${TABLE}.UF_do_veic ;;
  }

  dimension: valor_esperado_pelo_cliente__r_xx_xxx_ {
    type: string
    sql: ${TABLE}.Valor_esperado_pelo_cliente__R_XX_XXX_ ;;
  }

  dimension: valor_l__quido {
    type: string
    sql: ${TABLE}.VALOR_L__QUIDO ;;
  }

  dimension: valor_total_de_d__bitos_ {
    type: string
    sql: ${TABLE}.Valor_total_de_d__bitos_ ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
