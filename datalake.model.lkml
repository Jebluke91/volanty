connection: "volanty-production"

include: "/views/*.view"
include: "/dashboard/*.dashboard"

label: " Volanty Geral"

datagroup: default_datagroup  {
  max_cache_age: "24 hours"
#   sql_trigger: SELECT MAX(transaction_date) FROM imaginary_table ;;
}

access_grant: user_team {
  user_attribute: team
  allowed_values: [ "user","admin"]
}

access_grant: admin_team {
  user_attribute: team
  allowed_values: ["admin"]
}


named_value_format: reais {
  value_format: "#,##0"
  strict_value_format: yes
}





explore: simulacoes_qvmc {
  label: "Simulacoes_qvmc"

}

explore: Carros {
}

explore: estoque_critico_creditas_ {
}

explore: pos_compra {
}

explore: pos_compra_estoque {
}


explore: pos_compra_fila {
}

explore: avaliacao {
}

explore: custo_proprietario {
}


explore: visita {
  label: "visita"
}
#explore: visita_user {
#  label: "visita"
#  extends: [visita]
#  required_access_grants: [user_team]
#}

explore: leads_compra {
  label: "leads_compra"
}

explore: leads_ads_ {
  label: "leads_compra_custo"
}

explore: financiamentos_ {
  label: "Financiamento"
}


explore: report_comparador_pr {
  label: "Comparador_Precos"
}

explore: vendas_oficial {
  label: "Vendas"
}

explore: atribuicao_venda_leads {
  label: "atribuicao_venda_leads"
}

explore: estoque {
  label: "Estoque"
}



explore: leads_proprietario {

}


explore: vendas_canceladas {

}



explore: estoque_movimentacao {
  label: "Estoque_movimentacao"
}

explore: acquisition_lead {
  label: "acquisiton_lead_describe"
  required_access_grants: [admin_team]
}


explore: amostra_kbb_qvmc {
  label: "amostra_kbb"
  required_access_grants: [admin_team]
}


explore: compras_selecionados {
  label: "compras_selecionados"
}

explore: web_motors {
  label: "Oportunidades_Web_Motors"
  required_access_grants: [admin_team]
}

explore: report_alteracao_precos {
  label: "report_estoque_crítico"

}

explore: capacidade_estoque {
  label: "Estoque_capacidade"
}


explore: campanhas_proprietarios {
  label: "Campanhas_Proprietarios"
}

explore: campanhas_comprador {
  label: "Campanhas_Compradores"
}
explore: pedido_compras {
  label: "Compras"
}

explore: indicarrao{
  label: "Indicarrao"
}

explore: indicarrao_cadastros {
  label: "indicarrao_cadastros"
}
explore: fipe_vendas {
  label: "Fipe_Vendas"
}
explore: fipe_vendas_volanty {
  label: "Fipe_Vendas_Volanty"
}
