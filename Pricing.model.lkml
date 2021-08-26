connection: "volanty-production"


include: "/views/*.view"

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
