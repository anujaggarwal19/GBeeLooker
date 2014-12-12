- view: t_ft_view
  fields:

  - dimension: customer_uuid
    sql: ${TABLE}.customer_uuid

  - dimension: ft_start
    sql: ${TABLE}.ft_start

  - dimension_group: ft_start_utc
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.ft_start_utc

  - measure: count
    type: count
    drill_fields: []

