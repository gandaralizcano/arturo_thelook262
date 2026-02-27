view: sequel_database_usage_v1 {
  sql_table_name: demo_db.sequel_database_usage_v1 ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: build_name {
    type: string
    sql: ${TABLE}.build_name ;;
  }
  dimension: method_name {
    type: string
    sql: ${TABLE}.method_name ;;
  }
  measure: count {
    type: count
    drill_fields: [id, build_name, method_name]
  }
}
