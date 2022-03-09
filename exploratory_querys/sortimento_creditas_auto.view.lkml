view: sortimento_creditas_auto {
  derived_table: {
    sql:  select (select sum(qtd_carros) as soma_carros
      from (
        select count(0) as qtd_carros, same_car
        from (
          select *, concat(marca, ' ', modelo, ' ', ano_modelo, ' ', cor, ' ', km_categ) as same_car
          from (
            select marca, modelo, ano_modelo, km, cor,
            case
              when km <= 50000 then 'A: Até 50mil kms'
              when km > 50000 then 'B: mais de 50mil kms'
            end as km_categ
            from views.Estoque_Anunciado) a ) b
        group by same_car
        having count(0) > 1
        order by 1 desc ) c) / (select count(0) from views.Estoque_Anunciado) as sortimento
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
