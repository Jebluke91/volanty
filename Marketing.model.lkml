connection: "volanty-production"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project


explore: agendamentos_inspecoes {
  required_access_grants: [admin_team]
}

explore: agendamentos_inspecoes_marketing {
  required_access_grants: [marketing_team]
  extends: [agendamentos_inspecoes]
}
