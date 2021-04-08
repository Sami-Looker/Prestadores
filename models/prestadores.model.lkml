connection: "sami_main"
include: "/views/**/*.view"

explore: custos {
  label: "Prestadores Credenciados"

  join: rol {
    type: full_outer
    sql_on:${custos.codigo_tuss} = ${rol.codigo_tab_22};;
    relationship: one_to_one
  }
}

  explore: especialiades {
    label: "Especialidades"
}
