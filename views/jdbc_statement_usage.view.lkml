view: jdbc_statement_usage {
  sql_table_name: demo_db.jdbc_statement_usage ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: call_site {
    type: string
    sql: ${TABLE}.call_site ;;
  }
  dimension: method_name {
    type: string
    sql: ${TABLE}.method_name ;;
  }
  measure: count {
    type: count
    drill_fields: [id, method_name]
  }
}
