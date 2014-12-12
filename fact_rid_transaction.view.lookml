- view: fact_rid_transaction
  sql_table_name: FACT_RID_Transaction
  fields:

  - dimension: create_date_key
    type: int
    sql: ${TABLE}.create_date_key

  - dimension: create_time_key
    sql: ${TABLE}.create_time_key

  - dimension: customer_key
    type: int
    sql: ${TABLE}.customer_key

  - dimension: enqueue_date_key
    type: int
    sql: ${TABLE}.enqueue_date_key

  - dimension: enqueue_time_key
    sql: ${TABLE}.enqueue_time_key

  - dimension: last_updated_date_key
    type: int
    sql: ${TABLE}.last_updated_date_key

  - dimension: last_updated_time_key
    sql: ${TABLE}.last_updated_time_key

  - dimension: last_updater
    sql: ${TABLE}.last_updater

  - dimension: order_id
    sql: ${TABLE}.order_id

  - dimension: parent_rid
    type: int
    sql: ${TABLE}.parent_rid

  - dimension: rid
    type: int
    sql: ${TABLE}.rid

  - dimension: rid_attributes
    sql: ${TABLE}.rid_attributes

  - dimension: rid_record_type_key
    type: int
    sql: ${TABLE}.rid_record_type_key

  - dimension: slots
    type: int
    sql: ${TABLE}.slots

  - dimension: stage_code
    type: int
    sql: ${TABLE}.stage_code

  - dimension: stage_key
    type: int
    sql: ${TABLE}.stage_key

  - dimension: state_code
    type: int
    sql: ${TABLE}.state_code

  - dimension: state_key
    type: int
    sql: ${TABLE}.state_key

  - dimension: type_code
    type: int
    sql: ${TABLE}.type_code

  - measure: count
    type: count
    drill_fields: []

