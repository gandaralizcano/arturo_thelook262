view: test_lav {
  sql_table_name: demo_db.TEST_LAV ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: date_of_birth {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_of_birth ;;
  }
  dimension: full_name {
    type: string
    sql: ${TABLE}.full_name ;;
  }
  dimension_group: last_login {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_login ;;
  }
  dimension_group: registered {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.registered_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, full_name]
  }
}
