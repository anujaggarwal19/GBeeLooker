- view: ops_data_retention_plan
  sql_table_name: OPS_Data_Retention_Plan
  fields:

  - dimension: column_name
    sql: ${TABLE}.column_name

  - dimension: retention_period_in_days
    type: int
    sql: ${TABLE}.retention_period_in_days

  - dimension: table_name
    sql: ${TABLE}.table_name

  - measure: count
    type: count
    drill_fields: [column_name, table_name]

