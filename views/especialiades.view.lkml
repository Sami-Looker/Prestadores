view: especialiades {
  sql_table_name: sandbox.especialiades ;;

  dimension: id {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: bairro_unidade {
    type: string
    sql: ${TABLE}."Bairro/Unidade" ;;
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
    sql: ${TABLE}."NÍVEL DE ATENÇÃO" ;;
  }

  dimension: nome {
    type: string
    sql: ${TABLE}."nome" ;;
  }

  dimension: regiao {
    type: string
    sql: CASE WHEN ${TABLE}."regiao" = 'sul' then 'Sul'
              WHEN ${TABLE}."regiao" = 'norte' then 'Norte'
              ELSE ${TABLE}."regiao" END;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}."Tipo" ;;
  }

  dimension: regime_de_atendimento {
    type: string
    sql: ${TABLE}."REGIME DE ATENDIMENTO" ;;
  }

  dimension: produto {
    type: string
    sql: ${TABLE}."PRODUTO";;
  }

  dimension: telefone {
    type: string
    sql: ${TABLE}."TELEFONE" ;;
  }

   dimension: sami_sol_apartamento {
    hidden: yes
    }

  dimension: produto_filtro {
    type: string
    sql: ${planos.produto} ;;
  }

  dimension: contrato {
    type: string
    sql: ${TABLE}."Contrato" ;;
  }

  measure: count_especialidades{
    group_label: "Contagem de especialidades"
    sql:  ${TABLE}."especialidades" ;;
    type: count_distinct
    drill_fields: []
  }

  measure: count_parceiros{
    group_label: "Contagem de parceiros"
    sql:  ${TABLE}."nome" ;;
    type: count_distinct
    drill_fields: []
  }

}
