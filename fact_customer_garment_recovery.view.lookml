- view: fact_customer_garment_recovery
  sql_table_name: FACT_Customer_Garment_Recovery
  fields:

  - dimension_group: cancellation
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.Cancellation_Date

  - dimension: customer_email
    sql: ${TABLE}.Customer_Email

  - dimension: customer_name
    sql: ${TABLE}.Customer_Name

  - dimension: customer_uuid
    sql: ${TABLE}.Customer_UUID

  - dimension: day_left
    type: int
    sql: ${TABLE}.Day_Left

  - dimension: ft1
    sql: ${TABLE}.FT1

  - dimension: ft10
    sql: ${TABLE}.FT10

  - dimension: ft7
    sql: ${TABLE}.FT7

  - dimension: last_good_bye_balance
    type: number
    sql: ${TABLE}.Last_GoodBye_Balance

  - dimension: last_good_bye_date
    type: int
    sql: ${TABLE}.Last_GoodBye_Date

  - dimension: last_good_bye_status
    sql: ${TABLE}.Last_GoodBye_Status

  - dimension: product_sku
    sql: ${TABLE}.Product_SKU

  - dimension: return_notified_date
    sql: ${TABLE}.Return_Notified_Date

  - dimension: sub_plan_items
    type: int
    sql: ${TABLE}.Sub_Plan_Items

  - dimension: valid_till_date
    type: int
    sql: ${TABLE}.Valid_Till_Date

  - measure: count
    type: count
    drill_fields: [customer_name]

