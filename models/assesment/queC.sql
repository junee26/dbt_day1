-- C.How many people died Who have sibling

WITH deceased_with_sibling AS (
  SELECT COUNT(*) AS num_deceased_with_sibling
  FROM titanic
  WHERE Survived = 0
    AND SibSp = 0
)
SELECT num_deceased_with_sibling
FROM deceased_with_sibling
