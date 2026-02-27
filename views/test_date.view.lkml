view: test_date {
  sql_table_name: demo_db.Test_date ;;

  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_time ;;
  }
  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension_group: times {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.times ;;
  }
  measure: count {
    type: count
  }
}
