- view: dim_recommendation
  sql_table_name: DIM_Recommendation
  fields:

  - dimension: recommendation_active_end_date_key
    type: int
    sql: ${TABLE}.recommendation_active_end_date_key

  - dimension: recommendation_active_start_date_key
    type: int
    sql: ${TABLE}.recommendation_active_start_date_key

  - dimension: recommendation_description
    sql: ${TABLE}.recommendation_description

  - dimension: recommendation_gb_id
    type: yesno
    sql: ${TABLE}.recommendation_gb_id

  - dimension: recommendation_key
    type: int
    sql: ${TABLE}.recommendation_key

  - dimension: recommendation_name
    sql: ${TABLE}.recommendation_name

  - dimension: recommendation_source
    sql: ${TABLE}.recommendation_source

  - measure: count
    type: count
    drill_fields: [recommendation_name]

