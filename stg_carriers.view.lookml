- view: stg_carriers
  sql_table_name: STG_Carriers
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: carrier_name
    sql: ${TABLE}.carrier_name

  - dimension: tracking_url
    sql: ${TABLE}.tracking_url

  - measure: count
    type: count
    drill_fields: [id, carrier_name]

