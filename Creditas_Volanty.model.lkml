connection: "volanty-production"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard
include: "/dashboard/*.dashboard"
# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }



explore: agendamentos_proprietario {

}

explore: simulacoes_qvmc {

}

explore: creditas_plano_acao_estoque_critico {
  label: "plano_acao_estoque_critico"
}

explore: leads_compradores {

}

explore: estoque_anunciado {

}

explore: avaliacoes {

}

explore: funil_compras {

}

explore: funil_vendas {

}

explore: vendas_canceladas {

}

explore: vendas {

}

explore: compras {

}

explore: visitas {


}
