- view: fact_vendor_returns
  sql_table_name: FACT_Vendor_Returns
  fields:

  - dimension: garment_key
    type: int
    sql: ${TABLE}.garment_key

  - dimension: product_key
    type: int
    sql: ${TABLE}.product_key

  - dimension: vendor_name
    sql: ${TABLE}.vendor_name

  - dimension: vendor_return_date_key
    type: int
    sql: ${TABLE}.vendor_return_date_key

  - measure: count
    type: count
    drill_fields: [vendor_name]

