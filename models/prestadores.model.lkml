connection: "sami_dw"
persist_for: "6 hours"
include: "/views/**/*.view"

explore: custos {
  label: "Prestadores Credenciados"

  join: comparacao {
    type: left_outer
    sql_on:${custos.codigo_tuss} = ${comparacao.codigo_tuss} and ${custos.tipo} = ${comparacao.tipo} ;;
    relationship: one_to_one
  }

  join: rol {
    type: full_outer
    sql_on:${custos.codigo_tuss} = ${rol.codigo_tab_22};;
    relationship: one_to_one
  }
}

  explore: especialiades {
    label: "Especialidades"

    join: atendimento {
      type: left_outer
      sql_on:${especialiades.nome} = ${atendimento.nome};;
      relationship: many_to_many
    }
}
