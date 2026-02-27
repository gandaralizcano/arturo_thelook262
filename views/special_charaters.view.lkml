view: special_charaters {
  sql_table_name: demo_db.special_charaters ;;

  dimension: special_string {
    type: string
    sql: ${TABLE}.special_string ;;
  }
  measure: count {
    type: count
  }
}
