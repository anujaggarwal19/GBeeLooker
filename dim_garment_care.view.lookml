- view: dim_garment_care
  sql_table_name: DIM_Garment_Care
  fields:

  - dimension: garment_care_id
    type: int
    sql: ${TABLE}.garment_care_id

  - dimension: garment_care_instruction
    sql: ${TABLE}.garment_care_instruction

  - measure: count
    type: count
    drill_fields: []

