view: countries {
  sql_table_name: demo_db.Countries ;;

  dimension: binary_value {
    type: string
    sql: ${TABLE}.binary_value ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
  measure: count {
    type: count
  }
}
