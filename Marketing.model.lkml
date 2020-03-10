connection: "volanty-production"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project


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

access_grant: marketing_admin {
  user_attribute: team
  allowed_values: ["marketing_admin"]
}




explore: agendamentos_inspecoes {
  required_access_grants: [marketing_admin]
}

explore: agendamentos_inspecoes_marketing {
  required_access_grants: [marketing_team,marketing_admin]
  extends: [agendamentos_inspecoes]
}
