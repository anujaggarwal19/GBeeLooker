- view: dim_location_category
  sql_table_name: DIM_Location_Category
  fields:

  - dimension: location_category
    sql: ${TABLE}.location_category

  - dimension: location_category_key
    type: int
    sql: ${TABLE}.location_category_key

  - measure: count
    type: count
    drill_fields: []

