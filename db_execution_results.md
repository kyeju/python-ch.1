# DB 과제 주요 실행 결과

- 실행 환경: PostgreSQL, DBeaver
- 실행 파일: `members_assignment.sql`
- 실행 확인: `[ ]` DBeaver에서 아래 결과 확인 후 체크

## 1. 테이블 생성

`practice` 스키마 안에 `members` 테이블을 생성했다.

| 컬럼 | 자료형 | 조건 |
| --- | --- | --- |
| member_id | SERIAL | PRIMARY KEY |
| name | VARCHAR(50) | NOT NULL |
| email | VARCHAR(100) | UNIQUE, NOT NULL |
| age | INTEGER |  |
| joined_at | DATE |  |

## 2. 회원 입력 결과

| member_id | name | email | age | joined_at |
| ---: | --- | --- | ---: | --- |
| 1 | 김민수 | minsu@example.com | 25 | 2026-08-01 |
| 2 | 이지은 | jieun@example.com | 22 | 2026-08-03 |
| 3 | 박서준 | seojun@example.com | 31 | 2026-08-05 |
| 4 | 최유진 | yujin@example.com | 28 | 2026-08-07 |
| 5 | 정하늘 | haneul@example.com | 20 | 2026-08-10 |

## 3. SELECT 결과

- 25세 이상 회원: 김민수, 박서준, 최유진
- 이름이 이지은인 회원: 이지은
- 나이가 많은 순서: 박서준, 최유진, 김민수, 이지은, 정하늘
- 가입일 순서: 김민수, 이지은, 박서준, 최유진, 정하늘

## 4. 수정 및 삭제 결과

- 1번 회원 김민수의 나이를 25세에서 30세로 수정했다.
- 5번 회원 정하늘을 삭제했다.
- 삭제 후 남은 회원 수는 4명이다.

| member_id | name | email | age | joined_at |
| ---: | --- | --- | ---: | --- |
| 1 | 김민수 | minsu@example.com | 30 | 2026-08-01 |
| 2 | 이지은 | jieun@example.com | 22 | 2026-08-03 |
| 3 | 박서준 | seojun@example.com | 31 | 2026-08-05 |
| 4 | 최유진 | yujin@example.com | 28 | 2026-08-07 |

## 5. 집계 결과

| 조회 내용 | 결과 |
| --- | ---: |
| 전체 회원 수 | 4 |
| 평균 나이 | 27.75 |
| 가장 많은 나이 | 31 |
| 가장 적은 나이 | 22 |
| 25세 이상 회원 수 | 3 |

## 6. 도전 문제

삭제 후 남은 회원 중 가장 최근에 가입한 회원은 최유진이고, 가입일은 2026-08-07이다.
