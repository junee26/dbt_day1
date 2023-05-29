{{ config(
  materialized='view',
  file_format='delta'
) }}

WITH row_count AS (
    SELECT COUNT(*) AS count
    FROM DBT_JUNEE26.first_model1
)
SELECT *
FROM row_count