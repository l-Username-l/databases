-- https://school.programmers.co.kr/learn/courses/30/lessons/59415

-- 가장 최근에 들어온 동물은 언제 들어왔는지 조회하는 SQL 문을 작성
SELECT MAX(DATETIME) AS 시간 FROM ANIMAL_INS