view: especialiades {
  sql_table_name: prestadores.especialiades ;;

  dimension: id {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: bairro {
    type: string
    sql: ${TABLE}."bairro" ;;
  }

  dimension: endereco {
    type: string
    sql: ${TABLE}."endereco" ;;
  }

  dimension: especialidades {
    type: string
    sql: ${TABLE}."especialidades" ;;
  }

  dimension: grupo {
    type: string
    sql: ${TABLE}."grupo" ;;
  }

  dimension: municipio {
    type: string
    sql: ${TABLE}."municipio" ;;
  }

  dimension: nivel_de_atencao {
    type: string
    sql: ${TABLE}."nivel_de_atencao" ;;
  }

  dimension: nome {
    type: string
    sql: ${TABLE}."nome" ;;
  }

  dimension: regiao {
    type: string
    sql: ${TABLE}."regiao" ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}."tipo" ;;
  }

  dimension: regime_de_atendimento {
    type: string
    sql: ${atendimento.regime_de_atendimento} ;;
  }

  dimension: plano_cobertura {
    type: string
    sql: Case
        when ${sami_sol_enfermaria} = 'Sim' and ${sami_sol_apartamento}= 'Não' THEN 'Sami Sol Enfermaria'
        when ${sami_sol_apartamento} = 'Sim' and ${sami_sol_enfermaria} = 'Não' THEN 'Sami Sol Apartamento'
        when ${sami_sol_enfermaria} = 'Sim' AND  ${sami_sol_apartamento} = 'Sim' THEN 'Sami Sol Enfermaria e Apartamento'
    else 'Não Atende'
    END
    ;;
  }

   dimension: sami_sol_apartamento {
    hidden: yes
    type: string
    sql: ${TABLE}."sami_sol_apartamento" ;;
  }

  dimension: sami_sol_enfermaria {
    hidden: yes
    type: string
    sql: ${TABLE}."sami_sol_enfermaria" ;;
  }

  measure: count{
    sql:  ${TABLE}."especialidades" ;;
    type: count_distinct
    drill_fields: []
  }
}
