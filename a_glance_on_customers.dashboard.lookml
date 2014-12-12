- dashboard: a_glance_on_customers
  title: A Glance On Customers
  layout: tile
  tile_size: 100

#  filters:

  elements:
  
  - name: Paid Customer Count
    title: "Total Paid Customers as Of Today"
    type: single_value
    model: customer_analysis
    explore: dim_customer
    dimensions: [dim_customer_states.customer_state_name]
    measures: [dim_customer.count_distinct_customer_uuid]
    filters:
      dim_customer_states.customer_state_name: '"PAID"'
      dim_customer.scd_end_date: 'NULL'
    sorts: [dim_customer.count_distinct_customer_uuid desc]
    limit: 500
    show_null_points: true
    width: 3
    height: 2

  - name: Trial Customer Count
    title: "Total Number of Trials"
    type: single_value
    model: customer_analysis
    explore: dim_customer
    dimensions: [dim_customer_states.customer_state_name]
    measures: [dim_customer.count_distinct_customer_uuid]
    filters:
      dim_customer_states.customer_state_name: '"TRIAL"'
      dim_customer.scd_end_date: 'NULL'
    sorts: [dim_customer.count_distinct_customer_uuid desc]
    limit: 500
    show_null_points: true
    width: 3
    height: 2
    
  - name: Free Trial Customer Count
    title: "Total Free Trials"
    type: single_value
    model: customer_analysis
    explore: dim_customer
    dimensions: [dim_customer_states.customer_trial_type]
    measures: [dim_customer.count_distinct_customer_uuid]
    filters:
      dim_customer.customer_trial_type: '"FT"'
      dim_customer.scd_end_date: 'NULL'
    sorts: [dim_customer.count_distinct_customer_uuid desc]
    limit: 500
    show_null_points: true
    width: 3
    height: 2
    
  - name: Latest Customer
    title: "Latest Customers Who Joined"
    type: table
    model: customer_analysis
    explore: dim_customer
    dimensions: [dim_customer.customer_first_name,dim_customer.customer_plan_name]
    filters:
      dim_customer_states.customer_state_name: '"PAID"'
      dim_customer.scd_end_date: 'NULL'
      dim_customer.scd_start_date: 1 days
    sorts: [dim_customer.scd_start]
    limit: 15
    width: 3
    height: 5
  
    
  - name: Customer Plan Distribution
    title: "Customer Distribution By Plan Type"
    type: looker_pie
    model: customer_analysis
    explore: dim_customer
    dimensions: [dim_customer.customer_plan_name]
    measures: [dim_customer.count_distinct_customer_uuid]
    filters:
      dim_customer.customer_plan_name: -EMPTY
      dim_customer.scd_end_date: 'NULL'
    sorts: [dim_customer.count_distinct_customer_uuid desc]
    limit: 500
    inner_radius: 31
    width: 3
    height: 3
    

    
  - name: Customer State Distribution
    title: "Customer Distribution By State Type"
    type: looker_pie
    model: customer_analysis
    explore: dim_customer
    dimensions: [dim_customer_states.customer_state_name]
    measures: [dim_customer.count_distinct_customer_uuid]
    filters:
      dim_customer_states.customer_state_key: NOT NULL
      dim_customer.scd_end_date: 'NULL'
    sorts: [dim_customer_states.customer_state_name]
    limit: 500
    show_null_points: true
    hide_legend: false
    inner_radius: 31
    width: 3
    height: 3

  - name: Customer Trial Distribution
    title: "Customer Distribution By Trial Type"
    type: looker_pie
    model: customer_analysis
    explore: dim_customer
    dimensions: [dim_customer.customer_trial_type]
    measures: [dim_customer.count_distinct_customer_uuid]
    filters:
      dim_customer.customer_trial_type: -"NA"
      dim_customer.scd_end_date: 'NULL'
    sorts: [dim_customer.customer_trial_type]
    limit: 500
    show_null_points: true
    hide_legend: false
    inner_radius: 31
    width: 3
    height: 3
    
  - name: Geographic Distribution Of Customers
    title: Geographic Distribution Of Customers
    type: looker_geo_coordinates
    model: customer_analysis
    explore: dim_customer
    dimensions: [dim_customer.customer_zip]
    measures: [dim_customer.count_distinct_customer_uuid]
    filters:
    dim_customer.customer_zip: -"0"
    dim_customer.scd_end_date: 'NULL'
    sorts: [dim_customer.count_distinct_customer_uuid desc]
    limit: 5000
    quantize_colors: true
    colors: [Blue]
    empty_color: Gray
    point_color: Green
    map_color: Red
    outer_border_color: White
    inner_border_color: White
    inner_border_width: 2
    map: usa
    map_projection: ''
    loading: false

