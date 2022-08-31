-- https://school.programmers.co.kr/learn/courses/30/lessons/59036#fn1

-- 아픈 동물1의 아이디와 이름을 조회하는 SQL 문을 작성, 아이디 순으로 조회
SELECT ANIMAL_ID, NAME from Animal_ins
WHERE (INTAKE_CONDITION = 'Sick');