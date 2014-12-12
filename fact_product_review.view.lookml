- view: fact_product_review
  sql_table_name: FACT_Product_Review
  fields:

  - dimension: author
    sql: ${TABLE}.author

  - dimension: body
    sql: ${TABLE}.body

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: customer_key
    type: int
    sql: ${TABLE}.customer_key

  - dimension: customer_uuid
    sql: ${TABLE}.customer_uuid

  - dimension: email
    sql: ${TABLE}.email

  - dimension: location
    sql: ${TABLE}.location

  - dimension: product_handle
    sql: ${TABLE}.product_handle

  - dimension: product_key
    type: int
    sql: ${TABLE}.product_key

  - dimension: rating
    type: int
    sql: ${TABLE}.rating

  - dimension: replied_at
    sql: ${TABLE}.replied_at

  - dimension: reply
    sql: ${TABLE}.reply

  - dimension: sku
    sql: ${TABLE}.SKU

  - dimension: state
    sql: ${TABLE}.state

  - dimension: title
    sql: ${TABLE}.title

  - measure: count
    type: count
    drill_fields: []

