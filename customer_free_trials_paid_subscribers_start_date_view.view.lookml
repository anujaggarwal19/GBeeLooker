- view: customer_free_trials_paid_subscribers_start_date_view
  fields:

  - dimension: customer_marketing_channel
    sql: ${TABLE}.customer_marketing_channel

  - dimension: customer_name
    sql: ${TABLE}.customer_name

  - dimension: customer_uuid
    sql: ${TABLE}.customer_uuid

  - dimension: first_start
    sql: ${TABLE}.first_start

  - dimension: free_trial_start
    sql: ${TABLE}.free_trial_start

  - dimension: paid_subscriber_start
    sql: ${TABLE}.paid_subscriber_start

  - measure: count
    type: count
    drill_fields: [customer_name]

