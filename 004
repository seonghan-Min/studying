-----★PREVIOUS CLASS★-----
--일반적으로 PRIMARY KEY는 (마치 주민번호처럼) 테이블 생성 과정에서 반드시 삽입되어진다.
--다만 가끔 생성 과정에서 PRIMARY KEY 없이 만들어진 잘못된 TABLE이 존재한다.
--이러한 TABLE에 대해 SEQUENCE를 설정하여 할당해줄 수 있다.
--PRIMARY KEY가 존재하는 TABLE은 SEQUENCE가 별도로 필요하지 않다.

--VIEW는 마치 TABLE처럼 생성되어있는 TABLE을 복사해서 보여주는 명령어 이다.
--CREATE TABLE의 명령어는 TABLE을 직접 생성하지만
--CREATE VIEW는 원본으로 제작되어있는 데이터를 보여주기만 하는것이다.
--따라서 DROP VIEW를 해도 원본이 지워지지 않고 복사본 형태인 VIEW만 지워진다.
--다만 UPDATE 와 같은 명령어는 VIEW에게 명령해도 원본을 바꿔버린다.

--TABLE_NAME은 숫자로 시작하면 에러를 출력한다.
--마찬가지로 특수문자 또한 에러를 출력한다.
--_(언더바) 와 $(달러) 는 예외로 취급된다.

--DEFAULT 명령어는 NULL 값을 설정한 값으로 표시하는 명령어이다.
--NVL과 다르게 테이블 생성 과정에서 입력해주는 옵션이다.
--DEFAULT가 입력된 테이블은 INSERT 과정에서 NULL값이 있으면 에러를 출력한다.
--그럼에도 NULL이 출력되는 경우가 가끔 존재한다.
--그럴 때 사용하는 명령어가 NVL이다.
--HIREDATE DATE DEFAULT SYSDATE (HIREDATE의 데이터 타입은 DATE이고, NULL값은 SYSDATE를 표시하라)

--DATA TYPE
--VARCHAR2(가변), CHAR(고정)
--NUMBER(5,2) = 정수 5자리와 소숫점 2자리
--DATE 날짜
--LONG = CHAR이 최대 4000바이트 허용할 때 이 명령을 통해 4기가 까지 용량을 늘릴 수 있다.
--CLOB, BLOB, BFILE = 4기가의 용량을 가지게끔 하는 명령. 다만 LONG과 형태가 다르고 복잡하기에 잘 쓰지 않는다.
--RAW, LONG RAW

--원본 테이블을 복사할 때 사용하는 명령이다.
--TABLE_NAME 뒤에 AS 명령문으로 SUBQUERY 를 입력해주면 된다.
--이 때 아무런 데이터도 없이 원본 테이블의 구조만 따오고 싶다면 1=0 의 조건을 걸어주면 된다.
--다만 이렇게 복제된 테이블은 PK 또는 INDEX 등의 옵션까지 복사하진 않는다.
--때문에 원본 테이블은 출력이 빨랐지만 복사 테이블은 옵션이 없어서 출력이 느릴 수 있다.
CREATE TABLE EMPCP1 AS (SELECT EMPNO, ENAME FROM EMP);
CREATE TABLE EMPCP2 AS (SELECT EMPNO, ENAME FROM EMP WHERE 1=0);

--테이블의 구조를 알고싶을 때 사용하는 명령이다.
--DSECRIBE의 약자로 기억하면 된다.
DESC EMP;

--해당 유저가 가지고있는 권한으로 이용 가능한 테이블 목록을 보여주는 명령이다.
SELECT * FROM TAB;

--오늘 시각을 보고싶기에 첫 번째 문장 명령을 입력하면 에러를 출력한다.
--이유는 FROM 명령이 없어서 뽑아올 대상이 없기 때문이다.
--이 때 사용하는 단어가 DUAL 이다.
--이는 오라클에 기본으로 설정되어있는 테이블이다.
--FROM 뒤에 EMP와 같이 알고있는 테이블을 입력해도 되지만, 그렇게 되면 같은 내용이 ROW 수 만큼 출력된다.
SELECT SYSDATE;
SELECT SYSDATE FROM DUAL;
SELECT SYSDATE FROM EMP;

--일반적으로 DELETE 명령으로 데이터를 지우면 오라클 내부의 READ LOG에 삭제한 데이터가 복제된다.
--그 복제된 데이터를 통해 백업을 할 수 있는 것이다.
--여기서 TRUNCATE 명령을 사용하면 READ LOG에 데이터 복제 되는 것 없이 곧바로 데이터를 삭제한다.
--SHIFT DELETE 와 같은 것으로 보면 된다.
TRUNCATE TABLE MEMBER;

--DATE TYPE에 SYSDATE를 입력하면 오늘 날짜가 들어간다.
--SYSDATE는 년월일 시간 분 초 까지 있는데, COLUM은 년월일만 있을수도 있다.
--그런 포맷에 상관없이 SYSDATE는 알아서 맞춰서 들어가기 때문에 신경쓰지 않아도 된다.
CREATE TABLE EMPCP3
AS (SELECT EMPNO, HIREDATE FROM EMP WHERE 1=0);
INSERT INTO EMPCP3 VALUES(9999,SYSDATE);
SELECT * FROM EMPCP3;

--문제: A로 시작하는 사원의 사원번호와 입사일을 복제테이블에 넣어라
--SELECT 명령문으로 원본 테이블에서 A로 시작하는 사원들의 사원번호와 입사일을 알아낸다.
--SUBQUERY 를 사용하여 복사 테이블에 SELECT 문을 그대로 집어넣는다.
--이 때 VALUES 명령은 빼야한다. VALUES는 값을 정확히 지정하는 명령이다.
SELECT EMPNO, HIREDATE FROM EMPCP3;
SELECT EMPNO, HIREDATE FROM EMP WHERE ENAME LIKE 'A%';
INSERT INTO EMPCP3 (SELECT EMPNO, HIREDATE FROM EMP WHERE ENAME LIKE 'A%');

DROP TABLE EMPCP3;
COMMIT;

--문제: EMP 테이블의 DNAME을 앞 세 글자만 표시하라.
--SUBSTR(COULUM_NAME, START_NUMBER, HOW LONG) 명령을 사용하면 문자를 끊어서 쓸 수 있다.
SELECT SUBSTR(ENAME,1,2) FROM EMP;

--문제: DEPT 테이블을 복사하라.
--문제: 복사된 DEPT 테이블에 세 개의 데이터를 입력하라.
--문제: DNAME이 TEST로 시작하는 데이터의 LOC를 INCHEON으로 변경하라.
--문제: DEPTNO가 56인 DNAME을 TEST22로 변경하라.
--문제: DEPTNO가 57인 데이터를 삭제하라.
CREATE TABLE DEPTCP AS SELECT * FROM DEPT;
55 TEST1 SEOUL
56 TEST2 SEOUL
57 TEST3 SEOUL

INSERT INTO DEPTCP(DEPTNO, DNAME, LOC) VALUES (55,'TEST1','SEOUL');
INSERT INTO DEPTCP(DEPTNO, DNAME, LOC) VALUES (56,'TEST2','SEOUL');
INSERT INTO DEPTCP(DEPTNO, DNAME, LOC) VALUES (57,'TEST3','SEOUL');

UPDATE DEPTCP SET LOC='INCHON'
WHERE SUBSTR(DNAME,1,4)='TEST';

UPDATE DEPTCP SET DNAME='TEST22'
WHERE DEPTNO=56;

DELETE FROM DEPTCP
WHERE DEPTNO=57;

--SAL과 COMM을 합산한 가격을 출력하라
--DATE_TPYE에 숫자를 더하면 일수가 더해진다.
--NULL값이 존재한다면 어떤 연산을 해도 결과값이 NULL로 출력된다.
--이를 방지하기 위해 NVL을 모든 연산에 입력해줘야한다.
SELECT NVL(COMM,0)+NVL(SAL,0) AS CS,
    COMM,
    SAL, 
    SAL+1000,
    HIREDATE,
    HIREDATE+1
    FROM EMP;

--문제: 현재 시간으로부터 한 시간 뒤의 시간을 출력
-- +1은 하루를 더하는 명령이기 때문에 한 시간은 1/24를 하면 된다.
SELECT SYSDATE+1/24 FROM DUAL;

--글자 + 숫자 연산은 오류를 출력해낸다.
--이 때 A+2 = A2 이런 식으로 붙여서 결과를 출력하고 싶다면 ||를 쓰면 된다.
--다른 방법으로 CONCAT 명령을 수행해도 가능하다.
--만약 붙이고싶은 두 COLUM 사이에 별도의 내용을 추가하고 싶다면 ||를 두 번 사용하거나 CONCAT을 두 번 사용하면 된다.
SELECT ENAME +SAL FROM EMP;
SELECT ENAME || SAL FROM EMP;
SELECT CONCAT(ENAME,SAL) FROM EMP;
SELECT ENAME || '-' || SAL FROM EMP;
SELECT CONCAT(CONCAT(ENAME,'-'),SAL) FROM EMP;
SELECT CONCAT(CONCAT(SUBSTR(ENAME,1,2),'-'),SAL) FROM EMP;


--일반적으로 SELECT 명령어는 ROWNUM(들어온 순서대로 매겨지는 숫자)에 정렬되어 나타나진다.
--이 때 ORDER BY 명령으로 원하는 정렬을 구할 수 있다.
--여기서 정렬 방법은 ASC, DESC 두 가지가 있다.
--아무런 조건 없이 수행하면 기본적으로 ASC(ASCENDING)가 수행된다.
--반대로 DESC(DESCENDIGN)으로 수행된다.
SELECT E.*, E.ENAME, ROWID, ROWNUM, E.SAL FROM EMP E
ORDER BY E.SAL DESC, E.DEPTNO ASC;

--숫자를 표시하는 방법의 명령어 이다.
--9는 없는 자리의 숫자를 알아서 제외시키고 표시한다.
--0은 없는 자리의 숫자를 0으로 채워서 표시한다.
--자리 수 표시는 무조건 경 단위에 맞추자.
SELECT TO_CHAR(1000000,'999,999,999,999,999') AS PRICE FROM DUAL;
SELECT TO_CHAR(1000000,'000,000,000,000,000') AS PRICE FROM DUAL;

--DECODE는 해당 컬럼이 특정 데이터로 표시되어 있다면 원하는 데이터로 출력하라는 명령어 이다.
--DECODE(COLUM, DATA, OUTPUT, … , OUTPUT) 이 때 마지막 OUTPUT은 '위에서 언급한 모두가 아닐 경우' 를 말한다.
--DECODE(COMM, 10, '십', COMM) 은 COMM의 값이 10일 경우 '십' 으로 표시하고, 그렇지 않을 경우 COMM의 값 그대로 출력하라는 명령이다.
--마지막 OUTPUT은 반드시 필요한 DATA가 아니다. 그저 없으면 이렇게 표시하라는 옵션이다.
--현장에선 NVL보다 DECODE가 더 많이 쓰인다.
SELECT DEPTNO,
    DECODE(DEPTNO, 10, '십'
                , 20, '이십'
                , 30, '삼십'
                    , '기타')
AS DECODE FROM EMP;

SELECT COMM, NVL(COMM,10),
    TO_CHAR(
    DECODE(COMM, NULL, 10, COMM)
    , '999,999,999,999,999')
AS DD FROM EMP;

--문제: 사원번호, 사원명, 매니저번호, 매니저명 출력
--EMP TABLE의 MGR 과 EMP TABLE의 EMPNO를 연결시키는 SELFJOIN 명령이다.
--이 때 사원명 KING의 MGR은 없으므로 OUTERTJOIN을 입력해주지 않으면 KING은 결과에 출력되지 않는다.
--NVL을 사용하여 KIGN의 NULL 값을 PRESIDENT 로 바꿔서 출력해줄 수 있다.
--두 번째 명령문은 NVL이 아닌 DECODE를 사용하여 KING의 NULL값을 PRESIDENT로 교체 출력하는 명령이다.
SELECT E1.EMPNO, E1.ENAME
        , NVL(TO_CHAR(E1.MGR),'PRESIDENT') AS MGR
        , NVL(TO_CHAR(E2.ENAME),'PRESIDENT') AS MGR_NAME 
        FROM EMP E1, EMP E2
WHERE E1.MGR=E2.EMPNO(+);

SELECT E1.EMPNO, E1.ENAME
        , DECODE(TO_CHAR(E1.MGR), NULL, 'PRESIDENT') AS MGR
        , DECODE(TO_CHAR(E2.ENAME), NULL, 'PRESIDENT') AS MGR_NAME 
        FROM EMP E1, EMP E2
WHERE E1.MGR=E2.EMPNO(+);
