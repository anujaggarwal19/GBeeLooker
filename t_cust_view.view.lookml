- view: t_cust_view
  fields:

  - dimension: customer_marketing_channel
    sql: ${TABLE}.customer_marketing_channel

  - dimension: customer_name
    sql: ${TABLE}.customer_name

  - dimension: customer_uuid
    sql: ${TABLE}.customer_uuid

  - dimension_group: min_start_date_eastern
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.min_start_date_eastern

  - measure: count
    type: count
    drill_fields: [customer_name]

