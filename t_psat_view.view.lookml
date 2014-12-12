- view: t_psat_view
  fields:

  - dimension: customer_uuid
    sql: ${TABLE}.customer_uuid

  - dimension: ps_start_after_trial
    sql: ${TABLE}.ps_start_after_trial

  - measure: count
    type: count
    drill_fields: []

