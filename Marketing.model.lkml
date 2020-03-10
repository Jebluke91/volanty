connection: "volanty-production"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project


explore: agendamentos_inspecoes {
  required_access_grants: [marketing_admin]
}

explore: agendamentos_inspecoes_marketing {
  required_access_grants: [marketing_team,marketing_admin]
  extends: [agendamentos_inspecoes]
}
