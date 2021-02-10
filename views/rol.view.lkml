view: rol {
  sql_table_name: prestadores.rol ;;

  dimension: amb {
    type: string
    sql: ${TABLE}."amb" ;;
  }

  dimension: capitulo {
    type: string
    sql: ${TABLE}."capitulo" ;;
  }

  dimension: codigo_tab_22 {
    type: string
    sql: ${TABLE}."codigo_tab_22" ;;
  }

  dimension: correlacao_sim_nao_ {
    type: string
    sql: ${TABLE}."correlacao_sim_nao_" ;;
  }

  dimension: descricao {
    type: string
    sql: ${TABLE}."descricao" ;;
  }

  dimension: dut {
    type: string
    sql: ${TABLE}."dut" ;;
  }

  dimension: grupo {
    type: string
    sql: ${TABLE}."grupo" ;;
  }

  dimension: hco {
    type: string
    sql: ${TABLE}."hco" ;;
  }

  dimension: hso {
    type: string
    sql: ${TABLE}."hso" ;;
  }

  dimension: od {
    type: string
    sql: ${TABLE}."od" ;;
  }

  dimension: pac {
    type: string
    sql: ${TABLE}."pac" ;;
  }

  dimension: subgrupo {
    type: string
    sql: ${TABLE}."subgrupo" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: count_total_tuss {
    alias: [count_distinct]
    type: count_distinct
    sql:${codigo_tab_22};;
    drill_fields: [codigo_tab_22]
  }
}
