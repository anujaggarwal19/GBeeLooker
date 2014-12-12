- view: dim_product_latest
  sql_table_name: DIM_Product_Latest
  fields:

  - dimension: health_status
    type: int
    sql: ${TABLE}.health_status

  - dimension: product_color_key
    type: int
    sql: ${TABLE}.product_color_key

  - dimension: product_creation_date_key
    type: int
    sql: ${TABLE}.product_creation_date_key

  - dimension: product_creation_time_key
    sql: ${TABLE}.product_creation_time_key

  - dimension: product_description
    sql: ${TABLE}.product_description

  - dimension: product_inventory_state_key
    type: int
    sql: ${TABLE}.product_inventory_state_key

  - dimension: product_key
    type: int
    sql: ${TABLE}.product_key

  - dimension: product_launch_date_key
    type: int
    sql: ${TABLE}.product_launch_date_key

  - dimension: product_launch_time_key
    sql: ${TABLE}.product_launch_time_key

  - dimension: product_new_arrival_tags
    sql: ${TABLE}.product_new_arrival_tags

  - dimension: product_publish_date_key
    type: int
    sql: ${TABLE}.product_publish_date_key

  - dimension: product_publish_time_key
    sql: ${TABLE}.product_publish_time_key

  - dimension: product_retirement_date_key
    type: int
    sql: ${TABLE}.product_retirement_date_key

  - dimension: product_retirement_time_key
    sql: ${TABLE}.product_retirement_time_key

  - dimension: product_size_tags
    sql: ${TABLE}.product_size_tags

  - dimension: product_subvendor
    sql: ${TABLE}.product_subvendor

  - dimension: product_tags
    sql: ${TABLE}.product_tags

  - dimension: product_title
    sql: ${TABLE}.product_title

  - dimension: product_type_key
    type: int
    sql: ${TABLE}.product_type_key

  - dimension: product_vendor
    sql: ${TABLE}.product_vendor

  - dimension: product_vendor_size
    sql: ${TABLE}.product_vendor_size

  - dimension_group: scd_end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.scd_end

  - dimension_group: scd_start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.scd_start

  - dimension: sku
    sql: ${TABLE}.SKU

  - measure: count
    type: count
    drill_fields: []

