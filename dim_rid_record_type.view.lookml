- view: dim_rid_record_type
  sql_table_name: DIM_RID_RECORD_Type
  fields:

  - dimension: id
    primary_key: true
    type: yesno
    sql: ${TABLE}.id

  - dimension: name
    sql: ${TABLE}.name

  - measure: count
    type: count
    drill_fields: [id, name]

