view: sortimento_kavak {
  derived_table: {
    sql: select (select sum(qtd_carros) as soma_carros
      from (
        select count(0) as qtd_carros, same_car
        from (
          select *, concat(brand, ' ', model, ' ', model_year, ' ', color, ' ', km_categ) as same_car
          from (
            select brand, model, model_year, km, price, version, gear, body_type, color, fuel,
            case
              when km <= 50000 then 'A: Até 50mil kms'
              when km > 50000 then 'B: mais de 50mil kms'
            end as km_categ
            from views.Crawler_Kavak) a ) b
        group by same_car
        having count(0) > 1
        order by 1 desc ) c) / (select count(0) from views.Crawler_Kavak) as sortimento
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: sortimento {
    type: sum
    sql: ${TABLE}.sortimento ;;
  }

  set: detail {
    fields: [sortimento]
  }
}
