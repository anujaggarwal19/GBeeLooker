- view: fact_braintree_subscriptions_snapshot_latest
  sql_table_name: FACT_Braintree_Subscriptions_Snapshot_Latest
  fields:

  - dimension: balance_amount
    type: number
    sql: ${TABLE}.balance_amount

  - dimension: credit_card_expiration_date_key
    type: int
    sql: ${TABLE}.credit_card_expiration_date_key

  - dimension: credit_card_type
    sql: ${TABLE}.credit_card_type

  - dimension: customer_key
    type: int
    sql: ${TABLE}.customer_key

  - dimension: date_key
    type: int
    sql: ${TABLE}.date_key

  - dimension: days_past_due
    type: int
    sql: ${TABLE}.days_past_due

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

  - dimension: is_trial
    type: int
    sql: ${TABLE}.is_trial

  - dimension: next_cycle_plan_name
    sql: ${TABLE}.next_cycle_plan_name

  - dimension: next_payment_amount
    type: number
    sql: ${TABLE}.next_payment_amount

  - dimension: next_payment_date_key
    type: int
    sql: ${TABLE}.next_payment_date_key

  - dimension: paid_through_date_key
    type: int
    sql: ${TABLE}.paid_through_date_key

  - dimension: status
    sql: ${TABLE}.status

  - dimension: subscription_date_key
    type: int
    sql: ${TABLE}.subscription_date_key

  - dimension: trial_duration_in_days
    type: int
    sql: ${TABLE}.trial_duration_in_days

  - measure: count
    type: count
    drill_fields: [next_cycle_plan_name]

