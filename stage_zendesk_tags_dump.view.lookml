- view: stage_zendesk_tags_dump
  sql_table_name: STAGE_Zendesk_Tags_Dump
  fields:

  - dimension: all_hash
    sql: ${TABLE}.AllHash

  - dimension: row_no
    type: int
    sql: ${TABLE}.RowNo

  - dimension: run_id
    sql: ${TABLE}.RunID

  - dimension: tag
    sql: ${TABLE}.tag

  - dimension: ticket_id
    sql: ${TABLE}.TicketID

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Updated_At

  - measure: count
    type: count
    drill_fields: []

