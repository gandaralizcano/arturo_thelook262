view: sample_table {
  sql_table_name: demo_db.sample_table ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.updated_date ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
