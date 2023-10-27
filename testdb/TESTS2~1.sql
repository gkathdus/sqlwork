-- 사용한 테이블 생성 정보

CREATE TABLE DEPARTMENT(
DEPTCODE NUMBER,
DEPTNAME VARCHAR2(10),
DEPTNO NUMBER
);

INSERT INTO DEPARTMENT VALUES(101, '함소연', 2);

CREATE TABLE EMPLOYEE(
EMPNO NUMBER,
EMPNAME VARCHAR2(10),
DEPTNO NUMBER
);

INSERT INTO EMPLOYEE VALUES(1, '서우창', 102);

SELECT * FROM DEPARTMENT;
SELECT * FROM EMPLOYEE;

COMMIT;

-- 실행한 조인 쿼리
-- inner join
SELECT E.EMPNO, E.EMPNAME, E.DEPTNO, D.DEPTNAME
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D ON E.DEPTNO = D.DEPTCODE;

DROP TABLE EMPLOYEE;
DROP TABLE DEPARTMENT;

