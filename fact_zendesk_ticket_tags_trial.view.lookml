- view: fact_zendesk_ticket_tags_trial
  sql_table_name: FACT_Zendesk_Ticket_Tags_trial
  fields:

  - dimension: is_active
    type: int
    sql: ${TABLE}.is_active

  - dimension_group: load_db_ts
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LOAD_DB_TS

  - dimension: scd_end
    sql: ${TABLE}.scd_end

  - dimension_group: scd_start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.scd_start

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

