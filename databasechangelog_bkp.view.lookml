- view: databasechangelog_bkp
  sql_table_name: DATABASECHANGELOG_BKP
  fields:

  - dimension: id
    primary_key: true
    sql: ${TABLE}.ID

  - dimension: author
    sql: ${TABLE}.AUTHOR

  - dimension: comments
    sql: ${TABLE}.COMMENTS

  - dimension_group: dateexecuted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.DATEEXECUTED

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - dimension: exectype
    sql: ${TABLE}.EXECTYPE

  - dimension: filename
    sql: ${TABLE}.FILENAME

  - dimension: liquibase
    sql: ${TABLE}.LIQUIBASE

  - dimension: md5_sum
    sql: ${TABLE}.MD5SUM

  - dimension: orderexecuted
    type: int
    sql: ${TABLE}.ORDEREXECUTED

  - dimension: tag
    sql: ${TABLE}.TAG

  - measure: count
    type: count
    drill_fields: [id, filename]

