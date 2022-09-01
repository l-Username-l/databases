-- https://school.programmers.co.kr/learn/courses/30/lessons/59041

-- 동물 이름 중 두 번 이상 쓰인 이름과 해당 이름이 쓰인 횟수를 조회
SELECT NAME, SN.COUNT FROM
(SELECT NAME, COUNT(NAME) AS COUNT FROM ANIMAL_INS
WHERE NAME IS NOT NULL
GROUP BY NAME) SN

WHERE SN.COUNT > 1
ORDER BY NAME
;