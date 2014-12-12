- view: t_customer_session_count
  fields:

  - dimension: customer_session_count
    type: number
    sql: ${TABLE}.customer_session_count

  - dimension: customer_uuid
    sql: ${TABLE}.customer_uuid

  - measure: count
    type: count
    drill_fields: []

