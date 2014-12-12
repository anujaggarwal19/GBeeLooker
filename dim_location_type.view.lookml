- view: dim_location_type
  sql_table_name: DIM_Location_Type
  fields:

  - dimension: location_category_key
    type: int
    sql: ${TABLE}.location_category_key

  - dimension: location_type_active_end_date_key
    type: int
    sql: ${TABLE}.location_type_active_end_date_key

  - dimension: location_type_active_start_date_key
    type: int
    sql: ${TABLE}.location_type_active_start_date_key

  - dimension: location_type_description
    sql: ${TABLE}.location_type_description

  - dimension: location_type_key
    type: int
    sql: ${TABLE}.location_type_key

  - dimension: location_type_name
    sql: ${TABLE}.location_type_name

  - measure: count
    type: count
    drill_fields: [location_type_name]

