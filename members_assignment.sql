-- Part 1
CREATE SCHEMA IF NOT EXISTS practice;

DROP TABLE IF EXISTS practice.members;

CREATE TABLE practice.members (
    member_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    age INTEGER,
    joined_at DATE
);

-- Part 2
INSERT INTO practice.members (name, email, age, joined_at)
VALUES
('김민수', 'minsu@example.com', 25, '2026-08-01'),
('이지은', 'jieun@example.com', 22, '2026-08-03'),
('박서준', 'seojun@example.com', 31, '2026-08-05'),
('최유진', 'yujin@example.com', 28, '2026-08-07'),
('정하늘', 'haneul@example.com', 20, '2026-08-10');

SELECT * FROM practice.members;

SELECT name, email FROM practice.members;

SELECT * FROM practice.members
WHERE age >= 25;

SELECT * FROM practice.members
WHERE name = '이지은';

SELECT * FROM practice.members
ORDER BY age DESC;

SELECT * FROM practice.members
ORDER BY joined_at;

-- Part 3
SELECT * FROM practice.members
WHERE member_id = 1;

UPDATE practice.members
SET age = 30
WHERE member_id = 1;

SELECT * FROM practice.members
WHERE member_id = 1;

SELECT * FROM practice.members
WHERE member_id = 5;

DELETE FROM practice.members
WHERE member_id = 5;

SELECT * FROM practice.members;

-- Part 4
SELECT COUNT(*) FROM practice.members;

SELECT AVG(age) FROM practice.members;

SELECT MAX(age) FROM practice.members;

SELECT MIN(age) FROM practice.members;

SELECT COUNT(*) FROM practice.members
WHERE age >= 25;

-- 도전 문제 (가장 최근에 가입한 회원 조회)
SELECT * FROM practice.members
ORDER BY joined_at DESC
LIMIT 1;
