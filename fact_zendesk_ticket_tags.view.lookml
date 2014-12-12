- view: fact_zendesk_ticket_tags
  sql_table_name: FACT_Zendesk_Ticket_Tags
  fields:

  - dimension: is_active
    type: number
    sql: ${TABLE}.is_active

  - dimension_group: load_db_ts
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LOAD_DB_TS

  - dimension: tag
    sql: ${TABLE}.tag

  - dimension: ticket_id
    primary_key : true
    sql: ${TABLE}.TicketID

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Updated_At

  - measure: count
    type: count
    drill_fields: []

