-- A.How many people survive and how many people dead
WITH survival_status AS (
  SELECT COUNT(*) AS num_survivors
  FROM titanic
  WHERE Survived = 1
),
deceased_status AS (
  SELECT COUNT(*) AS num_deceased
  FROM titanic
  WHERE Survived = 0
)
SELECT (SELECT num_survivors FROM survival_status) AS num_survivors,
       (SELECT num_deceased FROM deceased_status) AS num_deceased