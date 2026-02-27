view: sample_data {
  sql_table_name: demo_db.SAMPLE_DATA ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: date_column {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DATE_COLUMN ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
