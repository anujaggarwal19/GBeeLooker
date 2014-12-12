- view: fact_customer_garment_recovery_daily_price
  sql_table_name: FACT_Customer_Garment_Recovery_Daily_Price
  fields:

  - dimension: is_active
    sql: ${TABLE}.is_ACTIVE

  - dimension_group: price_dts
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.price_DTS

  - dimension: prid
    sql: ${TABLE}.prid

  - dimension: retailprice
    type: number
    sql: ${TABLE}.retailprice

  - dimension: saleprice
    type: number
    sql: ${TABLE}.saleprice

  - dimension: sku
    sql: ${TABLE}.sku

  - dimension: tax
    type: number
    sql: ${TABLE}.tax

  - dimension: total
    type: number
    sql: ${TABLE}.total

  - dimension: unique_row_id
    type: int
    sql: ${TABLE}.unique_row_id

  - dimension: uuid
    sql: ${TABLE}.uuid

  - measure: count
    type: count
    drill_fields: []

