(
    SELECT 'ELDEST' AS TYPE, NAME, BIRTHDAY
    FROM worker
    WHERE BIRTHDAY = (SELECT MIN(BIRTHDAY) FROM worker)
)
UNION
(
    SELECT 'YOUNGEST' AS TYPE, NAME, BIRTHDAY
    FROM worker
    WHERE BIRTHDAY = (SELECT MAX(BIRTHDAY) FROM worker)
);
