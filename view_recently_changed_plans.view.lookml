- view: view_recently_changed_plans
  sql_table_name: VIEW_Recently_Changed_Plans
  fields:

  - dimension: current_plan_items
    type: int
    sql: ${TABLE}.current_plan_items

  - dimension: current_start_date
    type: int
    sql: ${TABLE}.current_start_date

  - dimension: customer_number_of_slots
    type: int
    sql: ${TABLE}.customer_number_of_slots

  - dimension: customer_uuid
    sql: ${TABLE}.customer_uuid

  - dimension: previous_number_of_slots
    type: int
    sql: ${TABLE}.previous_number_of_slots

  - dimension: previous_plan_items
    type: int
    sql: ${TABLE}.previous_plan_items

  - dimension: previous_start_date
    type: int
    sql: ${TABLE}.previous_start_date

  - measure: count
    type: count
    drill_fields: []

