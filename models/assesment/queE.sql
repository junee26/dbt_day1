-- E.How many male who died and how many female died?
WITH deceased_counts AS (
  SELECT Sex, COUNT(*) AS num_deceased
  FROM titanic
  WHERE Survived = 0
  GROUP BY Sex
)
SELECT *
FROM deceased_counts
