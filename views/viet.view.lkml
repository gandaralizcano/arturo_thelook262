view: viet {
  sql_table_name: demo_db.viet ;;

  dimension: f_id {
    type: number
    sql: ${TABLE}.f_id ;;
  }
  dimension: words_viet {
    type: string
    sql: ${TABLE}.words_viet ;;
  }
  measure: count {
    type: count
  }
}
