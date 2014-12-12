- view: dim_closet_state
  sql_table_name: DIM_Closet_State
  fields:

  - dimension: closet_state_active_end_date_key
    type: int
    sql: ${TABLE}.closet_state_active_end_date_key

  - dimension: closet_state_active_start_date_key
    type: int
    sql: ${TABLE}.closet_state_active_start_date_key

  - dimension: closet_state_description
    sql: ${TABLE}.closet_state_description

  - dimension: closet_state_gb_id
    type: yesno
    sql: ${TABLE}.closet_state_gb_id

  - dimension: closet_state_key
    type: int
    sql: ${TABLE}.closet_state_key

  - dimension: closet_state_name
    sql: ${TABLE}.closet_state_name

  - measure: count
    type: count
    drill_fields: [closet_state_name]

