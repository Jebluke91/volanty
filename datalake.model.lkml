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
  label: "Compras_Admin"
  required_access_grants: [admin_team]
}

explore: Aquisitions_User {
  label: "Compras"
  extends: [Aquisitions]
  required_access_grants: [user_team]
}

explore: agendamentos_qvmc30 {
  label: "Formulário_QVMC_Admin"
  required_access_grants: [admin_team]
}

explore: agendamentos_qvmc30_user {
  label: "Formulário_QVMC"
  extends: [agendamentos_qvmc30]
  required_access_grants: [user_team]
}

explore: Carros {
  label: "Inventário"
}
explore: agendamentos_inspecoes {
  label: "agendamentos_inspecoes_admin"
  required_access_grants: [admin_team]

}
explore: agendamentos_inspecoes_user {
  label: "agendamentos_inspecoes"
  extends: [agendamentos_inspecoes]
  required_access_grants: [user_team]
}
explore: visita {
  label: "visita_admin"
  required_access_grants: [admin_team]
}
explore: visita_user {
  label: "visita"
  extends: [visita]
  required_access_grants: [user_team]
}

explore: Leads_Compra{
  label: "leads_compra_admin"
  required_access_grants: [admin_team]
}
explore: leads_compra_user {
  label: "leads_compra"
  extends: [Leads_Compra]
  required_access_grants: [user_team]
}

explore: compras_selecionados_anuncios {}

explore: compras_selecionados_precificacao_qvmc {}

explore: report_comparador_pr {
  label: "Comparador_Precos"
}

explore: vendas_oficial {
  label: "Vendas"
}

explore: compras_selecionados_excel_input {
  label: "compras_backoffice"
}

explore: leads_unicos_compra {
  label: "Leads_Unico_Compra"
}

explore: teste {}
