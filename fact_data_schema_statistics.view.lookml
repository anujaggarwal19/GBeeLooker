- view: fact_data_schema_statistics
  sql_table_name: FACT_Data_Schema_Statistics
  fields:

  - dimension: data_size_in_mb
    type: number
    sql: ${TABLE}.data_size_in_mb

  - dimension: index_size_in_mb
    type: number
    sql: ${TABLE}.index_size_in_mb

  - dimension_group: load_timestamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.load_timestamp

  - dimension: table_name
    sql: ${TABLE}.table_name

  - dimension: table_rows
    sql: ${TABLE}.TABLE_ROWS

  - dimension: total_size_in_mb
    type: number
    sql: ${TABLE}.total_size_in_mb

  - measure: count
    type: count
    drill_fields: [table_name]

