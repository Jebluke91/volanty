connection: "volanty-production"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

explore: estoque_comercial {
  label: "estoque_comercial"
}

explore: venda_pedidos_v1 {
  label: "Pedidos_Venda"
}
