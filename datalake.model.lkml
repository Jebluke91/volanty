connection: "volanty-production"

include: "/views/*.view"

explore: schedule {}
explore: acquisition {}
explore: agendamentos_qvmc30 {}
explore: carros {}
explore: agendamentos_inspecoes {}
explore: visita {}
explore: leads_compra {}
explore: compras_selecionados_anuncios {}
explore: compras_selecionados_precificacao_qvmc {}
explore: usuarios {}
explore: vendas {}
explore: funil_anuncio {
  join: goals {
    sql_on: upper(${goals.label}) = ${funil_anuncio.etapa};;
  }
}
