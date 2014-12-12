- view: enqueue_dates
  fields:

  - dimension: customer_uuid
    sql: ${TABLE}.customer_uuid

  - dimension_group: enqueue
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.enqueue_date

  - dimension_group: wrong_enqueue
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.wrong_enqueue_date

  - measure: count
    type: count
    drill_fields: []

