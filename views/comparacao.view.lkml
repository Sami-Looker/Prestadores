view: comparacao {
  label: "Comparativo"
  sql_table_name: prestadores.comparacao ;;

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
    hidden: yes
    type: string
    sql: ${TABLE}."codigo_de_apresentacao" ;;
  }

  dimension: codigo_tuss {
    hidden: yes
    type: string
    sql: ${TABLE}."codigo_tuss" ;;
  }

  dimension: descricao_do_pacote {
    hidden: yes
    type: string
    sql: ${TABLE}."descricao_do_pacote" ;;
  }

  dimension: descricao_tuss {
    hidden: yes
    type: string
    sql: ${TABLE}."descricao_tuss" ;;
  }

  dimension: exclui {
    hidden: yes
    type: string
    sql: ${TABLE}."exclui" ;;
  }

  dimension: inclui {
    hidden: yes
    type: string
    sql: ${TABLE}."inclui" ;;
  }

  dimension: observacoes_gerais {
    hidden: yes
    type: string
    sql: ${TABLE}."observacoes_gerais" ;;
  }

  dimension: prestador {
    hidden: yes
    type: string
    sql: ${TABLE}."prestador" ;;
  }

  dimension: tipo {
    hidden: yes
    type: string
    sql: ${TABLE}."tipo" ;;
  }

  dimension: valor {
    hidden: yes
    type:number
    sql: ${TABLE}."valor" ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }

  measure: sum_valor {
    hidden: yes
    type: sum
    sql: ${valor} ;;
    html:<span>R$</span> {{ rendered_value }} ;;
    drill_fields: [codigo_tuss]
  }

  measure: avg_valor {
    hidden: yes
    type: average
    sql: ${valor} ;;
    drill_fields: [codigo_tuss]
    value_format_name: decimal_1
    html:<span>R$</span> {{ rendered_value }} ;;
  }
}
