- view: dim_customer_latest_view
  sql_table_name: DIM_Customer_Latest_View
  fields:

  - dimension: acquisition_channel_key
    type: int
    sql: ${TABLE}.acquisition_channel_key

  - dimension: customer_active_end_date_key
    type: int
    sql: ${TABLE}.customer_active_end_date_key

  - dimension: customer_active_end_time_key
    sql: ${TABLE}.customer_active_end_time_key

  - dimension: customer_active_start_date_key
    type: int
    sql: ${TABLE}.customer_active_start_date_key

  - dimension: customer_active_start_time_key
    sql: ${TABLE}.customer_active_start_time_key

  - dimension: customer_city
    sql: ${TABLE}.customer_city

  - dimension: customer_creation_date_key
    type: int
    sql: ${TABLE}.customer_creation_date_key

  - dimension: customer_creation_time_key
    sql: ${TABLE}.customer_creation_time_key

  - dimension: customer_email_address
    sql: ${TABLE}.customer_email_address

  - dimension: customer_key
    type: int
    sql: ${TABLE}.customer_key

  - dimension: customer_mail_address
    sql: ${TABLE}.customer_mail_address

  - dimension: customer_marketing_channel
    sql: ${TABLE}.customer_marketing_channel

  - dimension: customer_marketing_promotion
    sql: ${TABLE}.customer_marketing_promotion

  - dimension: customer_name
    sql: ${TABLE}.customer_name

  - dimension: customer_number_of_incentive_slots
    type: int
    sql: ${TABLE}.customer_number_of_incentive_slots

  - dimension: customer_number_of_slots
    type: int
    sql: ${TABLE}.customer_number_of_slots

  - dimension: customer_phone_number
    sql: ${TABLE}.customer_phone_number

  - dimension: customer_plan_items
    type: int
    sql: ${TABLE}.customer_plan_items

  - dimension: customer_plan_name
    sql: ${TABLE}.customer_plan_name

  - dimension: customer_state
    sql: ${TABLE}.customer_state

  - dimension: customer_state_key
    type: int
    sql: ${TABLE}.customer_state_key

  - dimension: customer_status
    sql: ${TABLE}.customer_status

  - dimension: customer_subscription_date_key
    type: int
    sql: ${TABLE}.customer_subscription_date_key

  - dimension: customer_subscription_session
    sql: ${TABLE}.customer_subscription_session

  - dimension: customer_uuid
    sql: ${TABLE}.customer_uuid

  - dimension: customer_zip
    sql: ${TABLE}.customer_zip

  - dimension: previous_customer_state_key
    type: int
    sql: ${TABLE}.previous_customer_state_key

  - dimension_group: scd_end
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.scd_end

  - dimension_group: scd_start
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.scd_start

  - measure: count
    type: count
    drill_fields: [customer_plan_name, customer_name]

