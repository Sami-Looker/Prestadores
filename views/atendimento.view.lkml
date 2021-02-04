view: atendimento {
  sql_table_name: prestadores.atendimento ;;

  dimension: id {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: bairro {
    hidden: yes
    type: string
    sql: ${TABLE}."bairro" ;;
  }

  dimension: endereco {
    hidden: yes
    type: string
    sql: ${TABLE}."endereco" ;;
  }

  dimension: grupo {
    hidden: yes
    type: string
    sql: ${TABLE}."grupo" ;;
  }

  dimension: municipio {
    hidden: yes
    type: string
    sql: ${TABLE}."municipio" ;;
  }

  dimension: nome {
    hidden: yes
    type: string
    sql: ${TABLE}."nome" ;;
  }

  dimension: regiao {
    hidden: yes
    type: string
    sql: ${TABLE}."regiao" ;;
  }

  dimension: regime_de_atendimento {
    hidden: yes
    type: string
    sql: ${TABLE}."regime_de_atendimento" ;;
  }

  dimension: tipo {
    hidden: yes
    type: string
    sql: ${TABLE}."tipo" ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
