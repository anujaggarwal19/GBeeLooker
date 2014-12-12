- view: fact_closet_snapshot_daily_wpat
  sql_table_name: FACT_Closet_Snapshot_Daily_wpat
  fields:

  - dimension: add_date_key
    type: int
    sql: ${TABLE}.add_date_key

  - dimension: add_time_key
    sql: ${TABLE}.add_time_key

  - dimension: bonus_key
    type: int
    sql: ${TABLE}.bonus_key

  - dimension: closet_state_key
    type: int
    sql: ${TABLE}.closet_state_key

  - dimension: customer_actual_return_date_key
    type: int
    sql: ${TABLE}.customer_actual_return_date_key

  - dimension: customer_actual_return_time_key
    sql: ${TABLE}.customer_actual_return_time_key

  - dimension: customer_key
    type: int
    sql: ${TABLE}.customer_key

  - dimension: customer_return_date_key
    type: int
    sql: ${TABLE}.customer_return_date_key

  - dimension: customer_return_notification_date_key
    type: int
    sql: ${TABLE}.customer_return_notification_date_key

  - dimension: customer_return_notification_time_key
    sql: ${TABLE}.customer_return_notification_time_key

  - dimension: customer_return_time_key
    sql: ${TABLE}.customer_return_time_key

  - dimension: date_key
    type: int
    sql: ${TABLE}.date_key

  - dimension: product_key
    type: int
    sql: ${TABLE}.product_key

  - dimension: recommendation_key
    type: int
    sql: ${TABLE}.recommendation_key

  - dimension: shipping_date_key
    type: int
    sql: ${TABLE}.shipping_date_key

  - dimension: shipping_time_key
    sql: ${TABLE}.shipping_time_key

  - dimension: source_id
    type: int
    sql: ${TABLE}.source_id

  - dimension: store_key
    type: int
    sql: ${TABLE}.store_key

  - measure: count
    type: count
    drill_fields: []

