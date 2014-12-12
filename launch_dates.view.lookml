- view: launch_dates
  fields:

  - dimension: launch_date
    type: int
    sql: ${TABLE}.launch_date

  - dimension: sku
    sql: ${TABLE}.SKU

  - measure: count
    type: count
    drill_fields: []

