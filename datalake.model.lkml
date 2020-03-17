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


explore: Aquisitions {
  label: "Compras"
}
explore: agendamentos_qvmc30 {
  label: "Formulário_QVMC"
}

explore: Carros {
  label: "Inventário"
}
explore: agendamentos_inspecoes {
  #required_access_grants: [admin_team]
}
explore: agendamentos_inspecoes_marketing {
  required_access_grants: [user_team]
  extends: [agendamentos_inspecoes]
}
explore: visita {}
explore: leads_compra {}
explore: compras_selecionados_anuncios {}
explore: compras_selecionados_precificacao_qvmc {}
explore: vendas_oficial {
  label: "Vendas"
}
