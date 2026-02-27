view: day_of_week {
  sql_table_name: demo_db.day_of_week ;;

  dimension: day {
    type: string
    sql: ${TABLE}.day ;;
  }
  measure: count {
    type: count
  }
}
