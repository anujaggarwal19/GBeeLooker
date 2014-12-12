- view: dim_zendesk_category_mapping
  sql_table_name: DIM_Zendesk_Category_Mapping
  fields:

  - dimension: zendesk_category
    sql: ${TABLE}.Zendesk_Category

  - dimension: zendesk_sub_category
    sql: ${TABLE}.Zendesk_Sub_Category

  - dimension: zendesk_top_category
    sql: ${TABLE}.Zendesk_Top_Category

  - measure: count
    type: count
    drill_fields: []

