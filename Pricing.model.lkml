connection: "volanty-production"


include: "/views/*.view"
include: "/exploratory_querys/*.view"

label: "Pricing"

datagroup: default_datagroup  {
  max_cache_age: "24 hours"
#   sql_trigger: SELECT MAX(transaction_date) FROM imaginary_table ;;
}

explore: rmse_qvmc {
  label: "RMSE_qvmc"

}

explore: rmse_qvmc_placa {
  label: "RMSE_qvmc_placa"

}
explore: rmse_vendas_oficial {
  label: "RMSE_vendas_oficial"

}
explore: crawler_kavak_stock {
  label: "Crawler Kavak Stock"

}
explore: crawler_kavak {
  label: "Crawler Kavak"

}


explore: crawler_kavak_mex_stock {
  label: "Crawler Kavak Mexico Stock"

}
explore: crawler_kavak_mex {
  label: "Crawler Kavak Mexicok"

}
explore: preditas_fallback {
  label: "Preditas Fallback"

}
explore: sortimento_kavak {
  label: "Sortimento Kavak"

}
explore: sortimento_creditas_auto {
  label: "Sortimento Creditas Auto"

}
explore: estoque_anunciado_entrada_saida {

}
