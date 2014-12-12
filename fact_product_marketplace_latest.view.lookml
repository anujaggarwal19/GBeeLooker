- view: fact_product_marketplace_latest
  sql_table_name: FACT_Product_Marketplace_Latest
  fields:

  - dimension: achievable_service_level_pct_25
    type: number
    sql: ${TABLE}.achievable_service_level_pct_25

  - dimension: achievable_service_level_pct_50
    type: number
    sql: ${TABLE}.achievable_service_level_pct_50

  - dimension: achievable_service_level_pct_65
    type: number
    sql: ${TABLE}.achievable_service_level_pct_65

  - dimension: achievable_service_level_pct_75
    type: number
    sql: ${TABLE}.achievable_service_level_pct_75

  - dimension: achievable_service_level_pct_85
    type: number
    sql: ${TABLE}.achievable_service_level_pct_85

  - dimension: achievable_service_level_pct_95
    type: number
    sql: ${TABLE}.achievable_service_level_pct_95

  - dimension: asset_count
    type: int
    sql: ${TABLE}.asset_count

  - dimension: cl_popularity
    type: number
    sql: ${TABLE}.cl_popularity

  - dimension: cycle_time_freq
    type: int
    sql: ${TABLE}.cycle_time_freq

  - dimension: cycle_time_pct_25
    type: number
    sql: ${TABLE}.cycle_time_pct_25

  - dimension: cycle_time_pct_50
    type: number
    sql: ${TABLE}.cycle_time_pct_50

  - dimension: cycle_time_pct_65
    type: number
    sql: ${TABLE}.cycle_time_pct_65

  - dimension: cycle_time_pct_75
    type: number
    sql: ${TABLE}.cycle_time_pct_75

  - dimension: cycle_time_pct_85
    type: number
    sql: ${TABLE}.cycle_time_pct_85

  - dimension: cycle_time_pct_95
    type: number
    sql: ${TABLE}.cycle_time_pct_95

  - dimension: date_key
    type: int
    sql: ${TABLE}.date_key

  - dimension: num_usages
    type: int
    sql: ${TABLE}.num_usages

  - dimension: product_key
    type: int
    sql: ${TABLE}.product_key

  - dimension: required_inventory_pct_25_180days
    type: number
    sql: ${TABLE}.required_inventory_pct_25_180days

  - dimension: required_inventory_pct_25_90days
    type: number
    sql: ${TABLE}.required_inventory_pct_25_90days

  - dimension: required_inventory_pct_50_180days
    type: number
    sql: ${TABLE}.required_inventory_pct_50_180days

  - dimension: required_inventory_pct_50_90days
    type: number
    sql: ${TABLE}.required_inventory_pct_50_90days

  - dimension: required_inventory_pct_65_180days
    type: number
    sql: ${TABLE}.required_inventory_pct_65_180days

  - dimension: required_inventory_pct_65_90days
    type: number
    sql: ${TABLE}.required_inventory_pct_65_90days

  - dimension: required_inventory_pct_75_180days
    type: number
    sql: ${TABLE}.required_inventory_pct_75_180days

  - dimension: required_inventory_pct_75_90days
    type: number
    sql: ${TABLE}.required_inventory_pct_75_90days

  - dimension: required_inventory_pct_85_180days
    type: number
    sql: ${TABLE}.required_inventory_pct_85_180days

  - dimension: required_inventory_pct_85_90days
    type: number
    sql: ${TABLE}.required_inventory_pct_85_90days

  - dimension: required_inventory_pct_95_180days
    type: number
    sql: ${TABLE}.required_inventory_pct_95_180days

  - dimension: required_inventory_pct_95_90days
    type: number
    sql: ${TABLE}.required_inventory_pct_95_90days

  - dimension: total_demand
    type: int
    sql: ${TABLE}.total_demand

  - dimension: wtd_demand
    type: number
    sql: ${TABLE}.wtd_demand

  - measure: count
    type: count
    drill_fields: []

