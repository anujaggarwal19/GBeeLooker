- connection: gwynniebee_dwh

- scoping: true           # for backward compatibility
- include: "*.view"       # include all views in this project
- include: "a_glance_on_customer_support.dashboard"  # include all dashboards in this project


- explore: fact_zendesk_ticket_details
  joins:
  - join: dim_customer
    foreign_key: customer_key
    
  - join: fact_zendesk_ticket_tags
    foreign_key: ticket_id

- explore: dim_customer
  hidden: true
  joins:
  - join: dim_customer_type 
    foreign_key: customer_type_key
    
  - join: dim_customer_states
    foreign_key: customer_state_key

- explore: dim_customer_type
  hidden: true

- explore: dim_customer_states
  hidden: true