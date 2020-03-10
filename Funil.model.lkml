connection: "volanty-production"

include: "/views/*.view"

explore: funil_lead_aquisicao {}
explore: funil_anuncio {
  join: goals {
    sql_on: upper(${goals.label}) = ${funil_anuncio.etapa}
      AND ${goals.month_date} = ${funil_anuncio.data_date};;
  }
}
