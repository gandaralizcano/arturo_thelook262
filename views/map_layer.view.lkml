view: map_layer {
  sql_table_name: demo_db.map_layer ;;

  dimension: customer_neighborhood {
    type: string
    sql: ${TABLE}.customer_neighborhood ;;
  }
  measure: count {
    type: count
  }
}
