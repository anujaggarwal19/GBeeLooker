- view: custtempslotstrial
  fields:

  - dimension: customer_uuid
    sql: ${TABLE}.customer_uuid

  - dimension: sku
    sql: ${TABLE}.SKU

  - dimension: slots
    type: int
    sql: ${TABLE}.slots

  - measure: count
    type: count
    drill_fields: []

