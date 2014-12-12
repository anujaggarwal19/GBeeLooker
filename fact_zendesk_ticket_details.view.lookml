- view: fact_zendesk_ticket_details
  sql_table_name: Fact_Zendesk_Ticket_Details
  fields:

  - dimension: agent_wait_time
    sql: ${TABLE}.Agent_Wait_Time

  - dimension: agent_wait_time_bussiness_hours
    sql: ${TABLE}.Agent_Wait_Time_Bussiness_Hours

  - dimension: all_hash
    sql: ${TABLE}.AllHash

  - dimension: assigned_at
    sql: ${TABLE}.Assigned_At

  - dimension: assignee_id
    sql: ${TABLE}.Assignee_Id

  - dimension: assignee_name
    sql: ${TABLE}.Assignee_Name

  - dimension: created_at
    type: time
    sql: ${TABLE}.Created_At
    timeframes: [time, date, week, month, year]

  - dimension: customer_key
    type: number
    sql: ${TABLE}.customer_key

  - dimension: customer_state_key
    type: number
    sql: ${TABLE}.customer_state_key

  - dimension: customer_uuid
    sql: ${TABLE}.customer_uuid

  - dimension: domain
    sql: ${TABLE}.Domain

  - dimension: group_id
    sql: ${TABLE}.Group_Id

  - dimension: group_name
    sql: ${TABLE}.Group_Name

  - dimension_group: load_ts_db
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LOAD_TS_DB

  - dimension: on_hold_time
    sql: ${TABLE}.ON_Hold_Time

  - dimension: on_hold_time_business_hours
    sql: ${TABLE}.On_Hold_Time_Business_Hours

  - dimension: organization_name
    sql: ${TABLE}.Organization_Name

  - dimension: requester_email
    sql: ${TABLE}.Requester_Email

  - dimension: requester_external_id
    sql: ${TABLE}.Requester_External_Id

  - dimension: requester_id
    sql: ${TABLE}.Requester_Id

  - dimension: requester_name
    sql: ${TABLE}.Requester_Name

  - dimension: requester_wait_time
    sql: ${TABLE}.Requester_Wait_Time

  - dimension: requester_wait_time_bussiness_hours
    sql: ${TABLE}.Requester_Wait_time_Bussiness_Hours

  - dimension: row_no
    type: int
    sql: ${TABLE}.RowNO

  - dimension: subject
    sql: ${TABLE}.Subject

  - dimension: submitter_name
    sql: ${TABLE}.Submitter_Name

  - dimension: ticket_assignee_stations
    sql: ${TABLE}.Ticket_Assignee_Stations

  - dimension: ticket_channel
    sql: ${TABLE}.Ticket_Channel

  - dimension: ticket_current_priority
    sql: ${TABLE}.Ticket_Current_Priority

  - dimension: ticket_current_status
    sql: ${TABLE}.Ticket_Current_Status

  - dimension: ticket_due_date
    sql: ${TABLE}.Ticket_Due_date

  - dimension: ticket_field_23010651
    sql: ${TABLE}.Ticket_field_23010651

  - dimension: ticket_field_23010661
    sql: ${TABLE}.Ticket_field_23010661

  - dimension: ticket_field_23010668
    sql: ${TABLE}.Ticket_field_23010668

  - dimension: ticket_field_23010671
    sql: ${TABLE}.Ticket_field_23010671

  - dimension: ticket_first_reply
    sql: ${TABLE}.Ticket_First_Reply

  - dimension: ticket_first_reply_bussiness_hours
    sql: ${TABLE}.Ticket_First_Reply_Bussiness_Hours

  - dimension: ticket_first_resolution
    sql: ${TABLE}.Ticket_First_Resolution

  - dimension: ticket_first_resolution_bussines_hours
    sql: ${TABLE}.Ticket_First_Resolution_Bussines_Hours

  - dimension: ticket_full_resolution
    sql: ${TABLE}.Ticket_Full_Resolution

  - dimension: ticket_full_resolution_bussiness_hours
    sql: ${TABLE}.Ticket_Full_Resolution_Bussiness_Hours

  - dimension: ticket_group_stations
    sql: ${TABLE}.Ticket_Group_Stations

  - dimension: ticket_id
    sql: ${TABLE}.TicketID
    drill_fields: [ticket_id,assignee_name, submitter_name, requester_name, ticket_current_status, updated_at]

  - dimension: ticket_initially_assigned_at
    sql: ${TABLE}.Ticket_Initially_Assigned_At

  - dimension: ticket_reopens
    sql: ${TABLE}.Ticket_Reopens

  - dimension: ticket_replies
    sql: ${TABLE}.Ticket_Replies

  - dimension: ticket_resolution_time
    type: int
    sql: CAST(${TABLE}.Ticket_Resolution_Time AS UNSIGNED)

  - dimension: ticket_satisfaction_score
    sql: ${TABLE}.Ticket_Satisfaction_Score

  - dimension: ticket_solved_at
    sql: ${TABLE}.Ticket_Solved_At

  - dimension: ticket_type
    sql: ${TABLE}.Ticket_Type

  - dimension: ticket_url
    sql: ${TABLE}.Ticket_Url

  - dimension: updated_at
    type: time
    sql: ${TABLE}.Updated_At
    timeframes: [time, date, week, month, year]

  - measure: count
    type: count
    drill_fields: [ticket_id,assignee_name, submitter_name, requester_name, ticket_current_status, updated_at]
  
  - measure: count_distinct
    type: count_distinct
    sql: ${ticket_id}
    drill_fields: [ticket_id,assignee_name, submitter_name, requester_name, ticket_current_status, updated_at]
    
  - measure: avg_resolution_time
    type: avg
    sql: CAST(${TABLE}.Ticket_Resolution_Time AS UNSIGNED)
    drill_fields: [ticket_id,assignee_name, submitter_name, requester_name, ticket_current_status, updated_at]

