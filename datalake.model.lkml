connection: "volanty-production"

include: "/views/*.view"

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

explore: avaliacao {
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


explore: conversao_aquisicao_v1 {
  label: "Conversao_Proprietário"

}

explore: capacidade_estoque {
  label: "Estoque_capacidade"
}

explore: pedido_compras {
  label: "Compras"
}
explore: agenda_cavs{
  label: "Agenda_Cavs"
}
