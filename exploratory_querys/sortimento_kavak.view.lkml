view: sortimento_kavak {
  derived_table: {
    sql: select concat(round((select sum(qtd_carros) as soma_carros
      from (
        select count(0) as qtd_carros, same_car
        from (
          select *, concat(brand, ' ', model, ' ', model_year, ' ', color, ' ', km_categ) as same_car
          from (
            select brand, model, model_year, km, price, version, gear, body_type, color, fuel,
            case
              when km <= 40000 then 'A: Até 40mil kms'
              when km > 40000 and km <= 80000 then 'B: de 40mil até 80mil kms'
              when km > 80000 and km <= 120000 then 'C: de 80mil até 120mil kms'
            end as km_categ
            from views.Crawler_Kavak) a ) b
        group by same_car
        having count(0) > 1
        order by 1 desc ) c) / (select count(0) from views.Crawler_Kavak) * 100, 2), "%") as sortimento
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: sortimento {
    type: string
    sql: ${TABLE}.sortimento ;;
  }

  set: detail {
    fields: [sortimento]
  }
}
