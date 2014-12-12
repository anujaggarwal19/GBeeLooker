- view: t_resubscribers_view
  fields:

  - dimension: customer_name
    sql: ${TABLE}.customer_name

  - dimension: customer_session_count
    type: number
    sql: ${TABLE}.customer_session_count

  - dimension: customer_subscription_session
    sql: ${TABLE}.customer_subscription_session

  - dimension: customer_uuid
    sql: ${TABLE}.customer_uuid

  - dimension: session_cancel_date_key_eastern
    type: number
    sql: ${TABLE}.session_cancel_date_key_eastern

  - dimension: session_start_date_key_eastern
    type: number
    sql: ${TABLE}.session_start_date_key_eastern

  - measure: count
    type: count
    drill_fields: [customer_name]

