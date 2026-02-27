view: korean_string {
  sql_table_name: demo_db.korean_string ;;

  dimension: korean {
    type: string
    sql: ${TABLE}.korean ;;
  }
  measure: count {
    type: count
  }
}
