- view: t_mssd_view
  fields:

  - dimension: customer_uuid
    sql: ${TABLE}.customer_uuid

  - dimension_group: min_status_start_date_eastern
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.min_status_start_date_eastern

  - measure: count
    type: count
    drill_fields: []

