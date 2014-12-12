- connection: gwynniebee_dwh

- scoping: true           # for backward compatibility
- include: "*.view"       # include all views in this project
- include: "*.dashboard"  # include all dashboards in this project

- explore : fact_t_logs
- explore : fact_t_stats