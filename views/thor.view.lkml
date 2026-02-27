view: thor {
  sql_table_name: demo_db.thor ;;

  dimension: bit_column {
    type: string
    sql: ${TABLE}.bit_column ;;
  }
  measure: count {
    type: count
  }
}
