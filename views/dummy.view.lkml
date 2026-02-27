view: dummy {
  sql_table_name: demo_db.dummy ;;

  dimension: a {
    type: string
    sql: ${TABLE}.a ;;
  }
  dimension: b {
    type: string
    sql: ${TABLE}.b ;;
  }
  measure: count {
    type: count
  }
}
