- view: dim_date
  sql_table_name: DIM_Date
  fields:

  - dimension: calendar_month
    sql: ${TABLE}.calendar_month

  - dimension: calendar_year
    type: int
    sql: ${TABLE}.calendar_year

  - dimension: date_key
    type: int
    sql: ${TABLE}.date_key

  - dimension: day_of_week
    sql: ${TABLE}.day_of_week

  - dimension: fiscal_year_month
    sql: ${TABLE}.fiscal_year_month

  - dimension: holiday_indicator
    sql: ${TABLE}.holiday_indicator

  - dimension: is_weekday
    type: yesno
    sql: ${TABLE}.is_weekday

  - dimension: major_event
    sql: ${TABLE}.major_event

  - measure: count
    type: count
    drill_fields: []

