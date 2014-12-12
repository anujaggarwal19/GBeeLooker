- view: user_base_plan
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension_group: end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.end_date

  - dimension_group: last_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_updated_time

  - dimension: num_items
    type: int
    sql: ${TABLE}.num_items

  - dimension: plan_name
    sql: ${TABLE}.plan_name

  - dimension_group: start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.start_date

  - dimension: user_uuid
    sql: ${TABLE}.user_uuid

  - measure: count
    type: count
    drill_fields: [id, plan_name]

