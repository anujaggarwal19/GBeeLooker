- view: dim_bonus
  sql_table_name: DIM_Bonus
  fields:

  - dimension: bonus_active_end_date_key
    type: int
    sql: ${TABLE}.bonus_active_end_date_key

  - dimension: bonus_active_start_date_key
    type: int
    sql: ${TABLE}.bonus_active_start_date_key

  - dimension: bonus_description
    sql: ${TABLE}.bonus_description

  - dimension: bonus_gb_id
    type: yesno
    sql: ${TABLE}.bonus_gb_id

  - dimension: bonus_key
    type: int
    sql: ${TABLE}.bonus_key

  - dimension: bonus_name
    sql: ${TABLE}.bonus_name

  - dimension: bonus_reason
    sql: ${TABLE}.bonus_reason

  - measure: count
    type: count
    drill_fields: [bonus_name]

