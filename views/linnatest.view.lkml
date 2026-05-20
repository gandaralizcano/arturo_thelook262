view: linnatest {
  # 1. Define the Persistent Derived Table (PDT)
  derived_table: {
    # This SQL block generates our mock/dummy data on the fly
    sql:
      SELECT 1 AS order_id, 101 AS user_id, '2026-05-01' AS order_date, 'Active' AS status, 45.50 AS amount
      UNION ALL
      SELECT 2 AS order_id, 102 AS user_id, '2026-05-02' AS order_date, 'Active' AS status, 120.00 AS amount
      UNION ALL
      SELECT 3 AS order_id, 101 AS user_id, '2026-05-15' AS order_date, 'Cancelled' AS status, 15.25 AS amount
      UNION ALL
      SELECT 4 AS order_id, 103 AS user_id, '2026-05-19' AS order_date, 'Active' AS status, 89.99 AS amount
    ;;

    # 2. Add a persistence strategy to turn this from an ephemeral table into a PDT
    # This example tells Looker to cache/persist the physical table for 24 hours.
    persist_for: "24 hours"

    # Optimization keys (Highly recommended for production, good habit for testing)
    indexes: ["order_id"] # Use 'datagroup_trigger' in production instead of persist_for if you have datagroups setup.
  }

  # --- Dimensions (The columns from our SQL query) ---

  dimension: order_id {
    type: number
    primary_key: yes
    sql: ${TABLE}.order_id ;;
    description: "The unique identifier for each mock order."
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension_group: order {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.order_date ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: amount {
    type: number
    value_format_name: usd
    sql: ${TABLE}.amount ;;
  }

  # --- Measures (Aggregations) ---

  measure: count {
    type: count
    description: "Total number of orders."
  }

  measure: total_amount {
    type: sum
    value_format_name: usd
    sql: ${amount} ;;
    description: "The sum of all order amounts."
  }

  measure: average_amount {
    type: average
    value_format_name: usd
    sql: ${amount} ;;
  }

  parameter: billing_month_param {
    type: date
  }
}
