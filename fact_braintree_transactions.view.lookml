- view: fact_braintree_transactions
  sql_table_name: FACT_Braintree_Transactions
  fields:

  - dimension: add_on_amount
    type: number
    sql: ${TABLE}.add_on_amount

  - dimension: amount
    type: number
    sql: ${TABLE}.amount

  - dimension: base_price_amount
    type: number
    sql: ${TABLE}.base_price_amount

  - dimension: credit_card_expiration_date_key
    type: int
    sql: ${TABLE}.credit_card_expiration_date_key

  - dimension: credit_card_type
    sql: ${TABLE}.credit_card_type

  - dimension: customer_email_address
    sql: ${TABLE}.customer_email_address

  - dimension: customer_key
    type: int
    sql: ${TABLE}.customer_key

  - dimension: discount_amount
    type: number
    sql: ${TABLE}.discount_amount

  - dimension: is_commercial
    type: int
    sql: ${TABLE}.is_commercial

  - dimension: is_debit
    type: int
    sql: ${TABLE}.is_debit

  - dimension: is_healthcare
    type: int
    sql: ${TABLE}.is_healthcare

  - dimension: is_payroll
    type: int
    sql: ${TABLE}.is_payroll

  - dimension: is_prepaid
    type: int
    sql: ${TABLE}.is_prepaid

  - dimension: order_id
    sql: ${TABLE}.order_id

  - dimension: plan_id
    sql: ${TABLE}.plan_id

  - dimension: subscription_id
    sql: ${TABLE}.subscription_id

  - dimension: transaction_date_key
    type: int
    sql: ${TABLE}.transaction_date_key

  - dimension: transaction_id
    sql: ${TABLE}.transaction_id

  - dimension: transaction_settlement_date_key
    type: int
    sql: ${TABLE}.transaction_settlement_date_key

  - dimension: transaction_settlement_time_key
    sql: ${TABLE}.transaction_settlement_time_key

  - dimension: transaction_status
    sql: ${TABLE}.transaction_status

  - dimension: transaction_time_key
    sql: ${TABLE}.transaction_time_key

  - dimension: transaction_type
    sql: ${TABLE}.transaction_type

  - measure: count
    type: count
    drill_fields: []

