view: foo {
  sql_table_name: demo_db.foo ;;

  dimension: line {
    type: string
    sql: ${TABLE}.line ;;
  }
  measure: count {
    type: count
  }
}
