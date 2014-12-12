- view: exp_temp2
  fields:

  - dimension: closetsize
    type: int
    sql: ${TABLE}.closetsize

  - dimension: customer_uuid
    sql: ${TABLE}.customer_uuid

  - measure: count
    type: count
    drill_fields: []

