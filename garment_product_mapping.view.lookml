- view: garment_product_mapping
  sql_table_name: Garment_Product_Mapping
  fields:

  - dimension: sku
    sql: ${TABLE}.SKU

  - dimension: snowflake_id
    sql: ${TABLE}.snowflake_id

  - measure: count
    type: count
    drill_fields: []

