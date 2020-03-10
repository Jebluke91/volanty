connection: "volanty-production"

include: "/views/*.view"

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
  allowed_values: ["admin"]
}

access_grant: financial_team {
  user_attribute: team
  allowed_values: ["financial"]
}

access_grant: rh_team {
  user_attribute: team
  allowed_values: ["rh"]
}



explore: agendamentos_inspecoes {
  required_access_grants: [admin_team]
}
explore: agendamentos_inspecoes_marketing {
  required_access_grants: [marketing_team,admin_team]
  extends: [agendamentos_inspecoes]
}
