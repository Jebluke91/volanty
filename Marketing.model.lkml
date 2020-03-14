connection: "volanty-production"

include: "/views/*.view"


named_value_format: reais {
  value_format: "\"R$\"#\".\"###"
  strict_value_format: yes
}


datagroup: default_datagroup  {
  max_cache_age: "24 hours"
#   sql_trigger: SELECT MAX(transaction_date) FROM imaginary_table ;;
}

access_grant: marketing_team {
  user_attribute: team
  allowed_values: [ "marketing" ]
}

access_grant: admin_team {
  user_attribute: team
  allowed_values: ["admin","marketing_admin"]
}

access_grant: financial_team {
  user_attribute: team
  allowed_values: ["financial"]
}

access_grant: marketing_admin {
  user_attribute: team
  allowed_values: ["marketing_admin"]
}



explore: agendamentos_inspecoes {
  required_access_grants: [admin_team]
}
explore: agendamentos_inspecoes_marketing {
  required_access_grants: [marketing_team,admin_team]
  extends: [agendamentos_inspecoes]
}
