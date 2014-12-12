- connection: gwynniebee_dwh

- scoping: true                  # for backward compatibility
- include: "*.view.lookml"       # include all the views
- include: "a_glance_on_customers.dashboard.lookml"  # include all the dashboards

- explore: dim_customer_type
- explore: dim_customer_states
- explore: dim_customer

  view : dim_customer
  joins :
  - join : dim_customer_type 
    foreign_key : customer_type_key
  - join : dim_customer_states
    foreign_key : customer_state_key
  
