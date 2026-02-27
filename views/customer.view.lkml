view: customer {
  sql_table_name: demo_db.customer ;;

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }
  dimension: neighborhood {
    type: string
    sql: ${TABLE}.neighborhood ;;
  }
  measure: count {
    type: count
  }
}
