{% set a = 2 %}

WITH filtered_rows AS (
    SELECT *
    FROM person
    WHERE id = {{ a }}
)
SELECT *
FROM filtered_rows