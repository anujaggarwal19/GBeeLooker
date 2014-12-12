- view: dim_customer_slots_view
  sql_table_name: DIM_Customer_Slots_View
  fields:

  - dimension: customer_active_end_date_key
    type: int
    sql: ${TABLE}.customer_active_end_date_key

  - dimension: customer_active_start_date_key
    type: int
    sql: ${TABLE}.customer_active_start_date_key

  - dimension: customer_number_of_slots
    type: int
    sql: ${TABLE}.customer_number_of_slots

  - dimension: customer_plan_items
    type: int
    sql: ${TABLE}.customer_plan_items

  - dimension: customer_uuid
    sql: ${TABLE}.customer_uuid

  - measure: count
    type: count
    drill_fields: []

