- view: fact_shipping_report_daily
  sql_table_name: FACT_Shipping_Report_Daily
  fields:

  - dimension: at_home
    type: int
    sql: ${TABLE}.at_home

  - dimension: customer_key
    type: int
    sql: ${TABLE}.customer_key

  - dimension: date_key
    type: int
    sql: ${TABLE}.date_key

  - dimension_group: enqueue
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.enqueue_date

  - dimension: items_available
    type: int
    sql: ${TABLE}.items_available

  - dimension: items_available_other
    type: int
    sql: ${TABLE}.items_available_other

  - dimension: items_in_closet
    type: int
    sql: ${TABLE}.items_in_closet

  - dimension: pending_slots
    type: int
    sql: ${TABLE}.pending_slots

  - measure: count
    type: count
    drill_fields: []

