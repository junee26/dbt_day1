-- D.Remove the NAN data from cabin and display updated list
WITH filtered_titanic AS (
  SELECT *
  FROM titanic
  WHERE Cabin IS NOT NULL
)
SELECT *
FROM filtered_titanic
