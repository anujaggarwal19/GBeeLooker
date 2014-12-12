- view: tmp_arnab_closet_minimum_daily
  sql_table_name: tmp_Arnab_Closet_Minimum_Daily
  fields:

  - dimension: at_hold
    type: int
    sql: ${TABLE}.AtHold

  - dimension: at_home
    type: int
    sql: ${TABLE}.AtHome

  - dimension: at_store
    type: int
    sql: ${TABLE}.AtStore

  - dimension: closet_min
    type: int
    sql: ${TABLE}.ClosetMin

  - dimension: email_address
    sql: ${TABLE}.EmailAddress

  - dimension_group: from
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.fromDate

  - dimension: no_return_notifications
    type: int
    sql: ${TABLE}.NoReturnNotifications

  - dimension_group: on
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.onDate

  - dimension: plan_items
    type: int
    sql: ${TABLE}.PlanItems

  - dimension: return_notifications
    type: int
    sql: ${TABLE}.ReturnNotifications

  - dimension: shorts
    type: int
    sql: ${TABLE}.Shorts

  - dimension: slot_items
    type: int
    sql: ${TABLE}.SlotItems

  - dimension: state
    sql: ${TABLE}.State

  - dimension: uuid
    sql: ${TABLE}.Uuid

  - measure: count
    type: count
    drill_fields: []

