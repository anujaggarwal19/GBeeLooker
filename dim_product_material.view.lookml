- view: dim_product_material
  sql_table_name: DIM_Product_Material
  fields:

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: material1
    sql: ${TABLE}.material1

  - dimension: material1pct
    type: number
    sql: ${TABLE}.material1pct

  - dimension: material2
    sql: ${TABLE}.material2

  - dimension: material2pct
    type: number
    sql: ${TABLE}.material2pct

  - dimension: material3
    sql: ${TABLE}.material3

  - dimension: material3pct
    type: number
    sql: ${TABLE}.material3pct

  - dimension: material4
    sql: ${TABLE}.material4

  - dimension: material4pct
    type: number
    sql: ${TABLE}.material4pct

  - dimension: product_material_key
    type: int
    sql: ${TABLE}.product_material_key

  - dimension: sku
    sql: ${TABLE}.SKU

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: []

