- view: all_subscribers_earliest_start_date_view
  sql_table_name: All_Subscribers_Earliest_Start_Date_View
  fields:

  - dimension: customer_key
    type: int
    sql: ${TABLE}.customer_key

  - dimension: customer_uuid
    sql: ${TABLE}.customer_uuid

  - measure: count
    type: count
    drill_fields: []

