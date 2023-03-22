connection: "sami_main"
include: "/views/**/*.view"

explore: especialiades {
    label: "Especialidades"

    join: planos {
      type: left_outer
      sql_on:${especialiades.produto} = ${planos.acesso};;
      relationship: many_to_many
    }

}
