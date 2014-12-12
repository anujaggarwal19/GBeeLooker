- view: dim_store
  sql_table_name: DIM_Store
  fields:

  - dimension: store_active_end_date_key
    type: int
    sql: ${TABLE}.store_active_end_date_key

  - dimension: store_active_start_date_key
    type: int
    sql: ${TABLE}.store_active_start_date_key

  - dimension: store_city
    sql: ${TABLE}.store_city

  - dimension: store_contact_email
    sql: ${TABLE}.store_contact_email

  - dimension: store_contact_name
    sql: ${TABLE}.store_contact_name

  - dimension: store_gb_id
    type: int
    sql: ${TABLE}.store_gb_id

  - dimension: store_key
    type: int
    sql: ${TABLE}.store_key

  - dimension: store_mail_address
    sql: ${TABLE}.store_mail_address

  - dimension: store_name
    sql: ${TABLE}.store_name

  - dimension: store_open_date_key
    type: int
    sql: ${TABLE}.store_open_date_key

  - dimension: store_phone_number
    sql: ${TABLE}.store_phone_number

  - dimension: store_state
    sql: ${TABLE}.store_state

  - dimension: store_zip
    sql: ${TABLE}.store_zip

  - measure: count
    type: count
    drill_fields: [store_name, store_contact_name]

