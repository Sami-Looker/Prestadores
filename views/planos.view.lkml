view: planos {
  sql_table_name: prestadores.planos ;;

  dimension: acesso {
    primary_key: yes
    type: string
    sql: CASE WHEN ${TABLE}."acesso" = 'Antares e Antares+' THEN 'Antares e Antares+'
    ELSE ${TABLE}."acesso" END;;
  }

  dimension: classe {
    type: string
    sql: ${TABLE}."classe" ;;
  }

  dimension: produto {
    type: string
    sql: ${TABLE}."produto" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
