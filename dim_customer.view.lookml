- view: dim_customer
  sql_table_name: DIM_Customer
  fields:

  - dimension: acquisition_channel_key
    type: int
    sql: ${TABLE}.acquisition_channel_key

  - dimension: current_tenure_month
    type: int
    sql: ${TABLE}.current_tenure_month

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

  - dimension: customer_company
    sql: ${TABLE}.customer_company

  - dimension: customer_creation_date_key
    type: int
    sql: ${TABLE}.customer_creation_date_key

  - dimension: customer_creation_time_key
    sql: ${TABLE}.customer_creation_time_key

  - dimension: customer_creation_utc_date_key
    type: int
    sql: ${TABLE}.customer_creation_utc_date_key

  - dimension: customer_creation_utc_time_key
    sql: ${TABLE}.customer_creation_utc_time_key

  - dimension: customer_email_address
    sql: ${TABLE}.customer_email_address

  - dimension: customer_first_name
    sql: ${TABLE}.customer_first_name

  - dimension: customer_key
    primary_key : true
    type: int
    sql: ${TABLE}.customer_key

  - dimension: customer_last_name
    sql: ${TABLE}.customer_last_name

  - dimension: customer_mail_address
    sql: ${TABLE}.customer_mail_address

  - dimension: customer_mail_address2
    sql: ${TABLE}.customer_mail_address2

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

  - dimension: customer_plan_id
    type: int
    sql: ${TABLE}.customer_plan_id

  - dimension: customer_plan_items
    type: int
    sql: ${TABLE}.customer_plan_items

  - dimension: customer_plan_name
    sql: ${TABLE}.customer_plan_name

  - dimension: customer_shipping_name
    sql: ${TABLE}.customer_shipping_name

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

  - dimension: customer_trial_type
    sql: ${TABLE}.customer_trial_type

  - dimension: customer_type_key
    type: int
    sql: ${TABLE}.customer_type_key

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

  - dimension: session_start_date_key
    type: int
    sql: ${TABLE}.session_start_date_key

  - dimension: session_start_time_key
    sql: ${TABLE}.session_start_time_key

  - measure: count
    type: count
    drill_fields: [customer_name, customer_shipping_name, customer_first_name, customer_last_name, customer_plan_name]
    
  - measure : count_distinct_customer_uuid
    type: count_distinct
    sql : ${customer_uuid}
    detail: [customer_name, customer_first_name, customer_last_name, customer_plan_name]

