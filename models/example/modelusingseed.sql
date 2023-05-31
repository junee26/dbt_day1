-- models/seed_model.sql
WITH seed_data AS (
  SELECT *
  FROM {{ ref('data') }}
)

SELECT *
FROM seed_data where DEPARTMENT = 'Sales'
