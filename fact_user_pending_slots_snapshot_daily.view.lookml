- view: fact_user_pending_slots_snapshot_daily
  sql_table_name: FACT_User_Pending_Slots_Snapshot_Daily
  fields:

  - dimension: customer_key
    type: int
    sql: ${TABLE}.customer_key

  - dimension: date_key
    type: int
    sql: ${TABLE}.date_key

  - dimension_group: dequeue
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.dequeue_date

  - dimension_group: enqueue
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.enqueue_date

  - dimension: enqueue_reason_code
    type: int
    sql: ${TABLE}.enqueue_reason_code

  - dimension_group: fulfilment
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.fulfilment_date

  - dimension: hours_in_queue
    type: int
    sql: ${TABLE}.hours_in_queue

  - dimension: pending_slots
    type: int
    sql: ${TABLE}.pending_slots

  - dimension: unfulfilment_reason_code
    type: int
    sql: ${TABLE}.unfulfilment_reason_code

  - measure: count
    type: count
    drill_fields: []

