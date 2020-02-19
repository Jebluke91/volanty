connection: "volanty-production"

include: "/views/*.view"

datagroup: default_datagroup  {
  max_cache_age: "24 hours"
#   sql_trigger: SELECT MAX(transaction_date) FROM imaginary_table ;;
}

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
explore: funil_lead_aquisicao {}
explore: funil_anuncio {
  join: goals {
    sql_on: upper(${goals.label}) = ${funil_anuncio.etapa}
            AND ${goals.month_date} = ${funil_anuncio.data_date};;
  }
}
