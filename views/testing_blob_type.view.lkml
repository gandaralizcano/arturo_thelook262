view: testing_blob_type {
  sql_table_name: demo_db.testing_blob_type ;;

  dimension: col1 {
    type: string
    sql: ${TABLE}.col1 ;;
  }
  dimension: col2 {
    type: string
    sql: ${TABLE}.col2 ;;
  }
  dimension: colid {
    type: number
    value_format_name: id
    sql: ${TABLE}.colid ;;
  }
  measure: count {
    type: count
  }
}
