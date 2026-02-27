view: fatal_error_sql_runner_query {
  sql_table_name: demo_db.FATAL_ERROR_sql_runner_query ;;

  dimension: users_count {
    type: number
    sql: ${TABLE}.`users.count` ;;
  }
  dimension: users_state {
    type: string
    sql: ${TABLE}.`users.state` ;;
  }
  measure: count {
    type: count
  }
}
