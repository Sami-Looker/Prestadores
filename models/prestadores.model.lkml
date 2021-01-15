connection: "sami_dw"
persist_for: "6 hours"
include: "/views/**/*.view"

explore: custos {

  join: comparacao {
    type: left_outer
    sql_on:${custos.codigo_tuss} = ${comparacao.codigo_tuss} ;;
    relationship: one_to_one
  }

}
