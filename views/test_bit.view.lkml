view: test_bit {
  sql_table_name: demo_db.test_bit ;;

  dimension: bit_column {
    type: yesno
    sql: ${TABLE}.bit_column ;;
  }
  measure: count {
    type: count
  }
}
