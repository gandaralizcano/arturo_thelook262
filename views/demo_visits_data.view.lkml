view: demo_visits_data {
  sql_table_name: demo_db.demo_visits_data ;;

  dimension: care_recipient_first_name {
    type: string
    sql: ${TABLE}.care_recipient_first_name ;;
  }
  dimension: care_recipient_id {
    type: string
    sql: ${TABLE}.care_recipient_id ;;
  }
  dimension: care_recipient_last_name {
    type: string
    sql: ${TABLE}.care_recipient_last_name ;;
  }
  dimension: is_fake {
    type: number
    sql: ${TABLE}.is_fake ;;
  }
  dimension: is_internal_agency {
    type: number
    sql: ${TABLE}.is_internal_agency ;;
  }
  dimension: local_authority_number {
    type: string
    sql: ${TABLE}.local_authority_number ;;
  }
  dimension: reported_duration_mins {
    type: number
    sql: ${TABLE}.reported_duration_mins ;;
  }
  dimension_group: reported_end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.reported_end_at ;;
  }
  dimension_group: reported_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.reported_start_at ;;
  }
  dimension: scheduled_duration_mins {
    type: number
    sql: ${TABLE}.scheduled_duration_mins ;;
  }
  dimension_group: scheduled_end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.scheduled_end_at ;;
  }
  dimension_group: scheduled_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.scheduled_start_at ;;
  }
  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  dimension: user_name {
    type: string
    sql: ${TABLE}.user_name ;;
  }
  dimension: visit_completed {
    type: number
    sql: ${TABLE}.visit_completed ;;
  }
  dimension: visit_date {
    type: string
    sql: ${TABLE}.visit_date ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	care_recipient_first_name,
	care_recipient_last_name,
	user_name,
	users.id,
	users.first_name,
	users.last_name
	]
  }

}
