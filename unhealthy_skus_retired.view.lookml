- view: unhealthy_skus_retired
  fields:

  - dimension: sku
    sql: ${TABLE}.SKU

  - measure: count
    type: count
    drill_fields: []

