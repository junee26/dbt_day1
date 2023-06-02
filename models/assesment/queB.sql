-- B.How many people survive how does not have sibling
WITH survivors_without_sibling AS (
  SELECT COUNT(*) AS num_survivors_without_sibling
  FROM titanic
  WHERE Survived = 1
    AND SibSp = 0
)
SELECT num_survivors_without_sibling
FROM survivors_without_sibling
