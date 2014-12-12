- view: ops_s3_bucket_key_status
  sql_table_name: OPS_S3_Bucket_Key_Status
  fields:

  - dimension: bucket_name
    sql: ${TABLE}.Bucket_Name

  - dimension: if_enable
    sql: ${TABLE}.If_Enable

  - dimension: job_name
    sql: ${TABLE}.Job_Name

  - dimension: key_name
    sql: ${TABLE}.Key_Name

  - dimension: key_name_prefix
    sql: ${TABLE}.Key_Name_Prefix

  - dimension: load_time_stamp
    sql: ${TABLE}.LOAD_TIME_STAMP

  - dimension: target_table
    sql: ${TABLE}.Target_Table

  - measure: count
    type: count
    drill_fields: [job_name, bucket_name, key_name]

