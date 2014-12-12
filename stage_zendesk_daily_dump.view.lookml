- view: stage_zendesk_daily_dump
  sql_table_name: STAGE_Zendesk_Daily_Dump
  fields:

  - dimension: all_hash
    sql: ${TABLE}.AllHash

  - dimension: field_value
    sql: ${TABLE}.FieldValue

  - dimension: fieldname
    sql: ${TABLE}.fieldname

  - dimension: row_no
    type: int
    sql: ${TABLE}.RowNO

  - dimension: run_id
    sql: ${TABLE}.RunID

  - dimension: ticket_id
    sql: ${TABLE}.TicketID

  - measure: count
    type: count
    drill_fields: [fieldname]

