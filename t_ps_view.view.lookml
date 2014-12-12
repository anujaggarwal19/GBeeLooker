- view: t_ps_view
  fields:

  - dimension: customer_uuid
    sql: ${TABLE}.customer_uuid

  - dimension: ps_end
    sql: ${TABLE}.ps_end

  - dimension: ps_start
    sql: ${TABLE}.ps_start

  - measure: count
    type: count
    drill_fields: []

