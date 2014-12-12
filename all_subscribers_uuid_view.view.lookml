- view: all_subscribers_uuid_view
  sql_table_name: All_Subscribers_UUID_View
  fields:

  - dimension: customer_uuid
    sql: ${TABLE}.customer_uuid

  - measure: count
    type: count
    drill_fields: []

