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

  measure: count {
    type: count
    drill_fields: []
  }
}
