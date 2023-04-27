USE homework_4;


SELECT mark, COUNT(*) AS count_mark
FROM auto
GROUP BY mark;

SELECT mark, COUNT(*) AS count_mark,
(SELECT COUNT(*) FROM auto) - COUNT(mark) AS other
FROM auto
GROUP BY mark
HAVING mark = 'LADA';

SELECT * FROM test_a
NATURAL LEFT JOIN test_b
WHERE test_b.id IS NULL;