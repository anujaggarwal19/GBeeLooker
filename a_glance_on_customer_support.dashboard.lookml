- dashboard: a_glance_on_customer_support
  title: A Glance On Customer Support
  layout: tile
  tile_size: 100

  filters:
    
  - name: ticket_created
    title: Tickets Created On
    type: date_filter
    default_value: Last 30 Days

  - name: assignee
    title: Ticket Assigned To
    type: suggest_filter
    base_view: fact_zendesk_ticket_details
    dimension: fact_zendesk_ticket_details.assignee_name
    
  - name: ticket_updated
    title: Tickets Updated On
    type: date_filter
    default_value: Last 10 Days


  elements:
  
  - name: Total Tickets Assigned
    title: "Total Tickets Assigned"
    type: single_value
    model: zendesk_ticket_details
    explore: fact_zendesk_ticket_details
    measures: [fact_zendesk_ticket_details.count_distinct]
    sorts: [fact_zendesk_ticket_details.count_distinct desc]
    listen:
      ticket_created: fact_zendesk_ticket_details.created_at_date
      ticket_updated: fact_zendesk_ticket_details.updated_at_date
      assignee: fact_zendesk_ticket_details.assignee_name
    limit: 10
    show_null_points: true
    width: 2
    height: 3


  - name: Ticket Created
    title: Total Tickets Created 
    type: looker_area
    model: zendesk_ticket_details
    explore: fact_zendesk_ticket_details
    dimensions: [fact_zendesk_ticket_details.created_at_date]
    measures: [fact_zendesk_ticket_details.count_distinct]
    sorts: [fact_zendesk_ticket_details.count_distinct desc]
    limit: 20
    listen:
      ticket_created: fact_zendesk_ticket_details.created_at_date
      ticket_updated: fact_zendesk_ticket_details.updated_at_date
      assignee: fact_zendesk_ticket_details.assignee_name
    show_null_points: true
    y_axis_labels: [Total Tickets Created]
    stacking: ''
    colors: ['#F6B17F']
    interpolation: linear
    show_value_labels: false
    show_view_names: true
    x_axis_scale: auto
    point_style: none
    height: 3
    width: 5
  
  - name: Ticket Updated Each Day
    title: Total Tickets Updated Each Day 
    type: looker_area
    model: zendesk_ticket_details
    explore: fact_zendesk_ticket_details
    dimensions: [fact_zendesk_ticket_details.updated_at_date]
    measures: [fact_zendesk_ticket_details.count_distinct]
    sorts: [fact_zendesk_ticket_details.count_distinct desc]
    limit: 20
    listen:
      ticket_created: fact_zendesk_ticket_details.created_at_date
      ticket_updated: fact_zendesk_ticket_details.updated_at_date
      assignee: fact_zendesk_ticket_details.assignee_name
    y_axis_labels: [Total Tickets Updated]
    show_null_points: true
    stacking: ''
    colors: ['#257E78']
    interpolation: linear
    show_value_labels: false
    show_view_names: true
    x_axis_scale: auto
    point_style: none
    height: 3
    width: 5

  - name: Ticket Distribution By Assignee
    title: Ticket Distribution By Assignee
    type: looker_column
    model: zendesk_ticket_details
    explore: fact_zendesk_ticket_details
    dimensions: [fact_zendesk_ticket_details.assignee_name]
    measures: [fact_zendesk_ticket_details.count_distinct]
    listen:
      ticket_created: fact_zendesk_ticket_details.created_at_date
      ticket_updated: fact_zendesk_ticket_details.updated_at_date
      assignee: fact_zendesk_ticket_details.assignee_name
    sorts: [fact_zendesk_ticket_details.count_distinct desc]
    limit: 50
    show_null_points: true
    stacking: ''
    show_value_labels: false
    show_view_names: true
    show_null_labels: false
    colors: ['#6C2D58']
    x_padding_left: 20
    x_padding_right: 30
    y_axis_labels: [Number of Tickets Assigned]
    y_axis_combined: true
    x_axis_label: Assignee Names
    x_axis_scale: auto
    
  - name: Average Time To Respond
    title: Average Time To Respond
    type: looker_column
    model: zendesk_ticket_details
    explore: fact_zendesk_ticket_details
    dimensions: [fact_zendesk_ticket_details.assignee_name]
    measures: [fact_zendesk_ticket_details.avg_resolution_time]
    sorts: [fact_zendesk_ticket_details.avg_resolution_time desc]
    limit: 50
    listen:
      ticket_created: fact_zendesk_ticket_details.created_at_date
      ticket_updated: fact_zendesk_ticket_details.updated_at_date
      assignee: fact_zendesk_ticket_details.assignee_name
    show_value_labels: false
    show_view_names: true
    show_null_labels: false
    y_axis_labels: [Response Time]
    colors: ['#40B8AF']
    stacking: ''
    x_axis_scale: auto


  - name: Top 10 Slowest Tickets
    title: Top 10 Slowest Tickets
    type: table
    model: zendesk_ticket_details
    explore: fact_zendesk_ticket_details
    dimensions: [fact_zendesk_ticket_details.ticket_resolution_time, fact_zendesk_ticket_details.ticket_id,fact_zendesk_ticket_details.assignee_name]
    sorts: [fact_zendesk_ticket_details.ticket_resolution_time desc]
    listen:
      ticket_created: fact_zendesk_ticket_details.created_at_date
      ticket_updated: fact_zendesk_ticket_details.updated_at_date
      assignee: fact_zendesk_ticket_details.assignee_name
    limit: 10
    
  - name: Top 10 Customers Raising Tickets
    title: Top 10 Customers Raising Tickets
    type: table
    model: zendesk_ticket_details
    explore: fact_zendesk_ticket_details
    dimensions: [dim_customer.customer_name, dim_customer.customer_email_address]
    measures: [fact_zendesk_ticket_details.count_distinct]
    filters:
      dim_customer.customer_email_address: -NULL
    listen:
      ticket_created: fact_zendesk_ticket_details.created_at_date
      ticket_updated: fact_zendesk_ticket_details.updated_at_date
      assignee: fact_zendesk_ticket_details.assignee_name
    sorts: [fact_zendesk_ticket_details.count_distinct desc]
    limit: 10

    
  