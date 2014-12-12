- view: t_ft1_view
  fields:

  - dimension: customer_uuid
    sql: ${TABLE}.customer_uuid

  - dimension: ft_end
    sql: ${TABLE}.ft_end

  - dimension: ft_start
    sql: ${TABLE}.ft_start

  - measure: count
    type: count
    drill_fields: []

