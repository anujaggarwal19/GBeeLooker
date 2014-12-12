- view: dim_channels
  sql_table_name: DIM_Channels
  fields:

  - dimension: campaign_end_date_key
    type: int
    sql: ${TABLE}.campaign_end_date_key

  - dimension: campaign_name
    sql: ${TABLE}.campaign_name

  - dimension: campaign_start_date_key
    type: int
    sql: ${TABLE}.campaign_start_date_key

  - dimension: channel
    sql: ${TABLE}.channel

  - dimension: channel_code
    sql: ${TABLE}.channel_code

  - dimension: channel_key
    type: int
    sql: ${TABLE}.channel_key

  - dimension: channel_name
    sql: ${TABLE}.channel_name

  - dimension: incentive_end_date_key
    type: int
    sql: ${TABLE}.incentive_end_date_key

  - dimension: incentive_start_date_key
    type: int
    sql: ${TABLE}.incentive_start_date_key

  - dimension: incentives
    sql: ${TABLE}.incentives

  - dimension: notes
    sql: ${TABLE}.notes

  - dimension: tracking_code
    sql: ${TABLE}.tracking_code

  - dimension: tracking_url
    sql: ${TABLE}.tracking_url

  - measure: count
    type: count
    drill_fields: [channel_name, campaign_name]

