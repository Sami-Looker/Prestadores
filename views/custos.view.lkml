view: custos {
  sql_table_name: prestadores.custos ;;

  dimension_group: _fivetran_synced {
    hidden: yes
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."_fivetran_synced" ;;
  }

  dimension: _row {
    hidden: yes
    type: number
    sql: ${TABLE}."_row" ;;
  }

  dimension: codigo_de_apresentacao {
    type: number
    sql: ${TABLE}."codigo_de_apresentacao" ;;
  }

  dimension: codigo_tuss {
    type: number
    sql: ${TABLE}."codigo_tuss" ;;
  }

  dimension: descricao_do_pacote {
    type: string
    sql: ${TABLE}."descricao_do_pacote" ;;
  }

  dimension: descricao_tuss {
    type: string
    sql: ${TABLE}."descricao_tuss" ;;
  }

  dimension: exclui {
    type: string
    sql: ${TABLE}."exclui" ;;
  }

  dimension: inclui {
    type: string
    sql: ${TABLE}."inclui" ;;
  }

  dimension: observacoes_gerais {
    type: string
    sql: ${TABLE}."observacoes_gerais" ;;
  }

  dimension: prestador {
    type: string
    sql: ${TABLE}."prestador" ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}."tipo" ;;
  }

  dimension: valor {
    type: string
    sql: ${TABLE}."valor" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
