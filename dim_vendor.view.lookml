- view: dim_vendor
  sql_table_name: DIM_Vendor
  fields:

  - dimension: vendor_active_end_date_key
    type: int
    sql: ${TABLE}.vendor_active_end_date_key

  - dimension: vendor_active_start_date_key
    type: int
    sql: ${TABLE}.vendor_active_start_date_key

  - dimension: vendor_city
    sql: ${TABLE}.vendor_city

  - dimension: vendor_contact_email
    sql: ${TABLE}.vendor_contact_email

  - dimension: vendor_contact_name
    sql: ${TABLE}.vendor_contact_name

  - dimension: vendor_key
    type: int
    sql: ${TABLE}.vendor_key

  - dimension: vendor_mail_address
    sql: ${TABLE}.vendor_mail_address

  - dimension: vendor_name
    sql: ${TABLE}.vendor_name

  - dimension: vendor_phone_number
    sql: ${TABLE}.vendor_phone_number

  - dimension: vendor_state
    sql: ${TABLE}.vendor_state

  - dimension: vendor_zip
    sql: ${TABLE}.vendor_zip

  - measure: count
    type: count
    drill_fields: [vendor_contact_name, vendor_name]

