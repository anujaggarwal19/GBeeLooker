- view: dim_customer_states
  sql_table_name: DIM_Customer_States
  fields:

  - dimension: customer_state_key
    primary_key : true
    type: int
    sql: ${TABLE}.customer_state_key

  - dimension: customer_state_name
    sql: ${TABLE}.customer_state_name

  - measure: count
    type: count
    drill_fields: [customer_state_name]

