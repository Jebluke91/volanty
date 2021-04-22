connection: "volanty-production"


include: "/views/*.view"

label: " Volanty Geral"

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
