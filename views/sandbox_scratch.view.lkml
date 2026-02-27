view: sandbox_scratch {
  sql_table_name: demo_db.sandbox_scratch ;;

  dimension: i {
    type: yesno
    sql: ${TABLE}.i ;;
  }
  measure: count {
    type: count
  }
}
