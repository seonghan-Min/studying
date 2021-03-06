-----★TODAY CLASS★-----
--EMP 테이블과 DEPT 테이블을 매번 JOIN 걸기에는 귀찮기도 하고, 테이블 양이 많아지면 복잡해지기도 한다.
--따라서 EMPDEPT 테이블을 새로 생성한다면 또 다른 문제가 발생한다.
--EMP 테이블에 데이터가 추가된다면 EMPDEPT 테이블에 그 데이터를 또 한번 추가해줘야만 하는 것이다.
--이렇게 귀찮은 문제를 해결할 수 있는 방법이 VIEW 이다.
--VIEW 테이블을 만들면 EMP와 DEPT테이블의 데이터를 수정하거나 추가하면 VIEW도 수정된다.
CREATE VIEW EMPDEPT AS(
SELECT 
    E.EMPNO, 
    E.ENAME,
    E.SAL,
    E.HIREDATE,
    D.DEPTNO,
    D.DNAME
FROM EMP E, DEPT D
WHERE E.DEPTNO=D.DEPTNO)
;


--하지만 이렇게 VIEW를 CREATE 해도 VIEW에 없는 COLUM을 추가하기 위해선
--기존의 VIEW를 삭제하고 SUBQUERY에 원하는 COLUM을 추가하여 VIEW를 다시 CREATE 해야만한다.
--매우 귀찮은 이 과정을 해결하기 위해 사용하는 명령이 CREATE OR REPLACE 명령이다.
--이 명령을 사용하면 원하고자 하는 COLUM을 JOIN 구문에 넣어 VIEW에 추가할 때
--VIEW의 삭제 과정 없이 COLUM만 추가해서 넣어주고 실행 시켜주면 VIEW가 알아서 REPLACE 된다.
--현장에서 이렇게 DBA가 VIEW를 생성해놓고 사원들이 VIEW를 통해 사용하게 된다.
--다만 사원이 CREATE OR REPLACE 안의 SUBQUERY를 건드리면 모든 사원의 명령이 오류를 출력하게 된다.
--그래서 함부로 건드리면 안된다. 어차피 권한 없어서 건드릴 수 없을거다.
CREATE OR REPLACE VIEW ED AS
(
SELECT 
    E.EMPNO, 
    E.ENAME,
    E.SAL,
    E.HIREDATE,
    D.DEPTNO,
    D.DNAME,
    D.LOC,
    S.COMM
FROM EMP E, DEPT D, BONUS S
WHERE E.DEPTNO=D.DEPTNO
AND E.EMPNO = S.EMPNO
);


--보너스를 받는 사원의 EMPNO, ENAME, DNAME, BONUS 출력
--첫 번째 코드는 VIEW 없이 직접 JOIN을 통해 실행한 명령이다.
--두 번째 코드는 기존에 만들어둔 VIEW를 이용하여 실행한 명령이다.
SELECT E.EMPNO, E.ENAME, D.DNAME, S.COMM
FROM EMP E, DEPT D, BONUS S
WHERE E.DEPTNO = D.DEPTNO
AND E.EMPNO = S.EMPNO;

SELECT EMPNO, ENAME, DNAME, COMM FROM ED;




-----★TIP★-----
--오라클, 타임 스탬프로 지난 데이터 보기 
--설정한 시간에 대해 이전의 데이터를 확인할 수 있다.
--이와 COMMIT한 이후의 데이터를 비교하여 DELETE OR DROP 한 데이터를 복구시킬 수 있다.
--시간은 일반적으로 1~2시간 내외로 설정된다. 때때로 3시간이 가능하기도 하다.

SELECT * 

  FROM 테이블 이름   AS OF TIMESTAMP(SYSTIMESTAMP - INTERVAL '2' HOUR)

SELECT * FROM [TABLE명] AS OF TIMESTAMP(SYSTIMESTAMP-INTERVAL '60' MINUTE) WHERE [조건] 





------★연습문제★-----


CREATE TABLE COMPANY 
   (	COM_SEQ NUMBER constraint PK_COMPANY  primary key, 
	COM_NAME VARCHAR2(20)
   ) ;


  CREATE TABLE GOODS 
   (	GOOD_SEQ NUMBER constraint PK_GOODS primary key, 
	GOOD_NAME VARCHAR2(20 BYTE), 
	GOOD_PRICE NUMBER
   ) ;


   CREATE TABLE USERS 
   (	USER_SEQ NUMBER, 
	USER_ID VARCHAR2(20) , 
	USER_NAME VARCHAR2(20), 
	USER_PW VARCHAR2(20), 
	USER_MOBILE VARCHAR2(15), 
	USER_GUBUN CHAR(1), 
	MGR_SEQ NUMBER,
 constraint PK_USERS  primary key (USER_SEQ),
 CONSTRAINT FK_USERS FOREIGN KEY (MGR_SEQ) REFERENCES USERS (USER_SEQ)
   ); 



  CREATE TABLE ORDERS 
   (	ORDER_CODE CHAR(6) constraint PK_ORDERS primary key, 
	USER_SEQ NUMBER CONSTRAINT FK_ORDERS_USERSEQ REFERENCES USERS (USER_SEQ), 
	TOT_PRICE NUMBER
   ) ;


  CREATE TABLE COMPANY_GOODS 
   (	
	GOOD_SEQ NUMBER not null CONSTRAINT FK_COMPANY_GOODS_GOODSEQ REFERENCES GOODS (GOOD_SEQ), 
	COM_SEQ  NUMBER not null CONSTRAINT FK_COMPANY_GOODS_COMSEQ REFERENCES COMPANY (COM_SEQ),
	CONSTRAINT PK_COMPANY_GOODS PRIMARY KEY (GOOD_SEQ, COM_SEQ)
   );
  
  
  CREATE TABLE ORDERS_GOODS 
   (	
	GOOD_SEQ NUMBER not null CONSTRAINT FK_ORDERS_GOODS_GOODSEQ REFERENCES GOODS (GOOD_SEQ), 
	ORDER_CODE CHAR(6) not null CONSTRAINT FK_ORDERS_GOODS_ORDERCODE REFERENCES ORDERS (ORDER_CODE), 
	ORDER_AMOUNT NUMBER default 0, 
	ORDER_PRICE NUMBER default 0,
	CONSTRAINT PK_ORDERS_GOODS PRIMARY KEY (GOOD_SEQ, ORDER_CODE)
   ) ;

  CREATE TABLE PARTTIME 
   (	USER_SEQ NUMBER constraint PK_PARTTIME primary key CONSTRAINT FK_PARTTIME_USERSEQ REFERENCES USERS (USER_SEQ), 
	TSAL NUMBER default 0
   ) ;


  CREATE TABLE FULLTIME 
   (	USER_SEQ NUMBER  primary key CONSTRAINT FK_FULLTIME_USERSEQ REFERENCES USERS (USER_SEQ), 
	ASAL NUMBER default 0
	
   ) ;

--------------------------------------------------------
--  DML for Table 
--------------------------------------------------------

insert into COMPANY (COM_SEQ,COM_NAME) values (1,'업체명1');
insert into COMPANY (COM_SEQ,COM_NAME) values (2,'업체명2');
insert into COMPANY (COM_SEQ,COM_NAME) values (3,'업체명3');
insert into COMPANY (COM_SEQ,COM_NAME) values (4,'업체명4');
insert into COMPANY (COM_SEQ,COM_NAME) values (5,'업체명5');
insert into COMPANY (COM_SEQ,COM_NAME) values (6,'업체명6');
insert into COMPANY (COM_SEQ,COM_NAME) values (7,'업체명7');



insert into USERS (USER_ID,USER_NAME,USER_PW,USER_MOBILE,USER_GUBUN,USER_SEQ,MGR_SEQ) 
values ('lee','이씨','111','01058589696','u',1,null);
insert into USERS (USER_ID,USER_NAME,USER_PW,USER_MOBILE,USER_GUBUN,USER_SEQ,MGR_SEQ) 
values ('kim','김씨','222','01023654787','u',2,1);
insert into USERS (USER_ID,USER_NAME,USER_PW,USER_MOBILE,USER_GUBUN,USER_SEQ,MGR_SEQ) 
values ('park','박씨','333','01052528989','u',3,1);
insert into USERS (USER_ID,USER_NAME,USER_PW,USER_MOBILE,USER_GUBUN,USER_SEQ,MGR_SEQ) 
values ('hong','홍씨','555','0108889999','u',5,3);
insert into USERS (USER_ID,USER_NAME,USER_PW,USER_MOBILE,USER_GUBUN,USER_SEQ,MGR_SEQ) 
values ('admin','이관리','444','0101234567','a',4,null);


insert into GOODS (GOOD_SEQ,GOOD_NAME,GOOD_PRICE) values (1,'상품명1',1000);
insert into GOODS (GOOD_SEQ,GOOD_NAME,GOOD_PRICE) values (2,'상품명2',2000);
insert into GOODS (GOOD_SEQ,GOOD_NAME,GOOD_PRICE) values (3,'상품명3',3000);
insert into GOODS (GOOD_SEQ,GOOD_NAME,GOOD_PRICE) values (4,'상품명4',4000);
insert into GOODS (GOOD_SEQ,GOOD_NAME,GOOD_PRICE) values (5,'상품명5',5000);
insert into GOODS (GOOD_SEQ,GOOD_NAME,GOOD_PRICE) values (6,'상품명6',6000);
insert into GOODS (GOOD_SEQ,GOOD_NAME,GOOD_PRICE) values (7,'상품명7',7000);
insert into GOODS (GOOD_SEQ,GOOD_NAME,GOOD_PRICE) values (8,'상품명8',8000);
insert into GOODS (GOOD_SEQ,GOOD_NAME,GOOD_PRICE) values (9,'상품명9',9000);
insert into GOODS (GOOD_SEQ,GOOD_NAME,GOOD_PRICE) values (10,'상품명10',10000);


insert into ORDERS (ORDER_CODE,USER_SEQ,TOT_PRICE) values ('n00001',1,11000);
insert into ORDERS (ORDER_CODE,USER_SEQ,TOT_PRICE) values ('n00002',1,4000);
insert into ORDERS (ORDER_CODE,USER_SEQ,TOT_PRICE) values ('n00003',2,12000);
insert into ORDERS (ORDER_CODE,USER_SEQ,TOT_PRICE) values ('n00004',3,7000);
insert into ORDERS (ORDER_CODE,USER_SEQ,TOT_PRICE) values ('n00005',4,14000);
insert into ORDERS (ORDER_CODE,USER_SEQ,TOT_PRICE) values ('n00006',1,24000);
insert into ORDERS (ORDER_CODE,USER_SEQ,TOT_PRICE) values ('n00007',3,40000);
insert into ORDERS (ORDER_CODE,USER_SEQ,TOT_PRICE) values ('n00008',2,2000);
insert into ORDERS (ORDER_CODE,USER_SEQ,TOT_PRICE) values ('n00009',2,9000);
insert into ORDERS (ORDER_CODE,USER_SEQ,TOT_PRICE) values ('n00010',3,4000);
insert into ORDERS (ORDER_CODE,USER_SEQ,TOT_PRICE) values ('n00011',4,40000);
insert into ORDERS (ORDER_CODE,USER_SEQ,TOT_PRICE) values ('n00012',1,14000);



insert into COMPANY_GOODS (GOOD_SEQ,COM_SEQ) values (1,1);
insert into COMPANY_GOODS (GOOD_SEQ,COM_SEQ) values (2,1);
insert into COMPANY_GOODS (GOOD_SEQ,COM_SEQ) values (3,1);
insert into COMPANY_GOODS (GOOD_SEQ,COM_SEQ) values (4,1);
insert into COMPANY_GOODS (GOOD_SEQ,COM_SEQ) values (1,2);
insert into COMPANY_GOODS (GOOD_SEQ,COM_SEQ) values (2,2);
insert into COMPANY_GOODS (GOOD_SEQ,COM_SEQ) values (6,2);
insert into COMPANY_GOODS (GOOD_SEQ,COM_SEQ) values (7,2);
insert into COMPANY_GOODS (GOOD_SEQ,COM_SEQ) values (5,3);
insert into COMPANY_GOODS (GOOD_SEQ,COM_SEQ) values (6,3);
insert into COMPANY_GOODS (GOOD_SEQ,COM_SEQ) values (7,3);
insert into COMPANY_GOODS (GOOD_SEQ,COM_SEQ) values (5,4);
insert into COMPANY_GOODS (GOOD_SEQ,COM_SEQ) values (6,4);
insert into COMPANY_GOODS (GOOD_SEQ,COM_SEQ) values (7,4);
insert into COMPANY_GOODS (GOOD_SEQ,COM_SEQ) values (8,4);
insert into COMPANY_GOODS (GOOD_SEQ,COM_SEQ) values (9,4);
insert into COMPANY_GOODS (GOOD_SEQ,COM_SEQ) values (10,5);


insert into ORDERS_GOODS (GOOD_SEQ,ORDER_AMOUNT,ORDER_PRICE,ORDER_CODE) values (1,1,1000,'n00001');
insert into ORDERS_GOODS (GOOD_SEQ,ORDER_AMOUNT,ORDER_PRICE,ORDER_CODE) values (2,2,4000,'n00001');
insert into ORDERS_GOODS (GOOD_SEQ,ORDER_AMOUNT,ORDER_PRICE,ORDER_CODE) values (3,2,6000,'n00001');
insert into ORDERS_GOODS (GOOD_SEQ,ORDER_AMOUNT,ORDER_PRICE,ORDER_CODE) values (4,1,4000,'n00002');
insert into ORDERS_GOODS (GOOD_SEQ,ORDER_AMOUNT,ORDER_PRICE,ORDER_CODE) values (5,2,10000,'n00003');
insert into ORDERS_GOODS (GOOD_SEQ,ORDER_AMOUNT,ORDER_PRICE,ORDER_CODE) values (2,1,2000,'n00003');
insert into ORDERS_GOODS (GOOD_SEQ,ORDER_AMOUNT,ORDER_PRICE,ORDER_CODE) values (4,5,2000,'n00004');
insert into ORDERS_GOODS (GOOD_SEQ,ORDER_AMOUNT,ORDER_PRICE,ORDER_CODE) values (5,4,2000,'n00004');
insert into ORDERS_GOODS (GOOD_SEQ,ORDER_AMOUNT,ORDER_PRICE,ORDER_CODE) values (6,5,3000,'n00004');
insert into ORDERS_GOODS (GOOD_SEQ,ORDER_AMOUNT,ORDER_PRICE,ORDER_CODE) values (7,2,14000,'n00005');
insert into ORDERS_GOODS (GOOD_SEQ,ORDER_AMOUNT,ORDER_PRICE,ORDER_CODE) values (8,3,24000,'n00006');
insert into ORDERS_GOODS (GOOD_SEQ,ORDER_AMOUNT,ORDER_PRICE,ORDER_CODE) values (10,4,40000,'n00007');
insert into ORDERS_GOODS (GOOD_SEQ,ORDER_AMOUNT,ORDER_PRICE,ORDER_CODE) values (2,1,2000,'n00008');
insert into ORDERS_GOODS (GOOD_SEQ,ORDER_AMOUNT,ORDER_PRICE,ORDER_CODE) values (3,2,6000,'n00009');
insert into ORDERS_GOODS (GOOD_SEQ,ORDER_AMOUNT,ORDER_PRICE,ORDER_CODE) values (1,3,3000,'n00009');
insert into ORDERS_GOODS (GOOD_SEQ,ORDER_AMOUNT,ORDER_PRICE,ORDER_CODE) values (4,1,4000,'n00010');
insert into ORDERS_GOODS (GOOD_SEQ,ORDER_AMOUNT,ORDER_PRICE,ORDER_CODE) values (5,2,10000,'n00011');
insert into ORDERS_GOODS (GOOD_SEQ,ORDER_AMOUNT,ORDER_PRICE,ORDER_CODE) values (6,5,30000,'n00011');
insert into ORDERS_GOODS (GOOD_SEQ,ORDER_AMOUNT,ORDER_PRICE,ORDER_CODE) values (7,2,14000,'n00012');


insert into PARTTIME (USER_SEQ,TSAL) values (1,6800);
insert into PARTTIME (USER_SEQ,TSAL) values (2,5000);


insert into FULLTIME (USER_SEQ,ASAL) values (3,1500000);



-- -------------------------------------------------------- 주문테이블 주문일자 추가
ALTER TABLE ORDERS ADD(ORDER_DATE date default sysdate); 
UPDATE ORDERS SET ORDER_DATE = TO_DATE('2018-08-01', 'YYYY-MM-DD') WHERE ORDER_CODE = 'n00001';
UPDATE ORDERS SET ORDER_DATE = TO_DATE('2018-06-21', 'YYYY-MM-DD') WHERE ORDER_CODE = 'n00002';
UPDATE ORDERS SET ORDER_DATE = TO_DATE('2018-06-24', 'YYYY-MM-DD') WHERE ORDER_CODE = 'n00003';
UPDATE ORDERS SET ORDER_DATE = TO_DATE('2018-05-17', 'YYYY-MM-DD') WHERE ORDER_CODE = 'n00004';
UPDATE ORDERS SET ORDER_DATE = TO_DATE('2018-05-13', 'YYYY-MM-DD') WHERE ORDER_CODE = 'n00005';
UPDATE ORDERS SET ORDER_DATE = TO_DATE('2018-05-01', 'YYYY-MM-DD') WHERE ORDER_CODE = 'n00006';
UPDATE ORDERS SET ORDER_DATE = TO_DATE('2018-04-29', 'YYYY-MM-DD') WHERE ORDER_CODE = 'n00007';
UPDATE ORDERS SET ORDER_DATE = TO_DATE('2018-03-16', 'YYYY-MM-DD') WHERE ORDER_CODE = 'n00008';
UPDATE ORDERS SET ORDER_DATE = TO_DATE('2018-02-21', 'YYYY-MM-DD') WHERE ORDER_CODE = 'n00009';
UPDATE ORDERS SET ORDER_DATE = TO_DATE('2018-01-19', 'YYYY-MM-DD') WHERE ORDER_CODE = 'n000010';
UPDATE ORDERS SET ORDER_DATE = TO_DATE('2018-01-04', 'YYYY-MM-DD') WHERE ORDER_CODE = 'n000011';
UPDATE ORDERS SET ORDER_DATE = TO_DATE('2018-12-26', 'YYYY-MM-DD') WHERE ORDER_CODE = 'n000012';



commit;





-------------------문제풀이
--문제 1
--회원별 주문 상품 통계
--회원아이디 상품번호, 상품개수, 구매금액
--주문건이 없더라도 출력
--주문건이 없는 고객에 대한 정보를 출력하기 위해 OUTER JOIN을 사용해야 한다.
--이 때 OUTERJOIN의 대상은 U와 G 인데, 둘을 직접적으로 연결할 수 있는 방법이 없다.
--때문에 O 테이블을 반드시 사용해야만 하는데, 이 때 OUTERJOIN의 방향은
--U로부터 OG를 향해 가는 방향으로 걸어주면 된다.
--이 방향을 ERD로 보면 주로 닭발을 받는 방향이 된다.
SELECT 
    U.USER_ID AS 회원아이디, 
    OG.ORDER_CODE AS 상품번호, 
    OG.ORDER_AMOUNT AS 상품개수,
    OG.ORDER_PRICE AS 구매금액
FROM USERS U, ORDERS O, ORDERS_GOODS OG
WHERE U.USER_SEQ = O.USER_SEQ(+)
AND O.ORDER_CODE = OG.ORDER_CODE(+)
GROUP BY 
    U.USER_ID,
    OG.ORDER_CODE, 
    OG.ORDER_AMOUNT, 
    OG.ORDER_PRICE
ORDER BY USER_ID;
    




--문제 2
--업체별 공급 상품 리스트(업체번호, 업체명, 상품번호, 상품명)
--상품이 없더라도 업체명 출력. 업체번호 및 상품번호 오름차순.
SELECT 
    C.COM_SEQ AS 업체번호,
    C.COM_NAME AS 업체명,
    G.GOOD_SEQ AS 상품번호,
    G.GOOD_NAME AS 상품명
FROM
    COMPANY C,
    GOODS G,
    COMPANY_GOODS CG
WHERE 
    C.COM_SEQ = CG.COM_SEQ(+)
    AND CG.GOOD_SEQ = G.GOOD_SEQ(+)
ORDER BY 업체번호, 상품번호;





--문제 3
--회원권리 : 정규직 / 비정규직 구분하여 정규직이면 A, 비정규직이면 B
--회원번호, 회원명, 정규/비정규 여부, 월급여 출력
--%%UNION, INTERSECT, MINUS 사용하여 풀어보기
--%%UNION은 SUBQEURY를 사용했을 때 가로로 붙는 현상을 세로로 다시 만들어주는 명령문.
--%%INTERSECT는 두 행의 집합 중 공통된 행을 반영하는 교집합 명령.
--%%MINUS는 교집합을 제외한 나머지를 반영하는 차집합 명령.
SELECT
    U.USER_SEQ AS 회원번호,
    U.USER_NAME AS 회원명,
    DECODE(NVL(F.ASAL,0),0,'B','A') AS 정규직_여부,
    CASE
        WHEN NVL(F.ASAL,0) = 0 THEN TO_CHAR(P.TSAL*8*20)
        ELSE TO_CHAR(ASAL)
    END AS 월급DU
FROM 
    FULLTIME F, 
    PARTTIME P, 
    USERS U
WHERE F.USER_SEQ(+) = U.USER_SEQ
AND U.USER_SEQ = P.USER_SEQ(+)
ORDER BY 회원번호
;


select *
from
    (select
        u.user_seq as 회원번호,
        u.user_name as 회원명,
        'A' as 정규비정규여부,
        asal as 월급여
    from users u, fulltime f
    where u.user_seq = f.user_seq ) 
union
    (select
        u.user_seq as 회원번호,
        u.user_name as 회원명,
        'B' as 정규비정규여부,
        (p.tsal*8*20) as 월급여
    from users u, parttime p
    where u.user_seq = p.user_seq )
;





--문제 4
--주문된 상품별 판매량, 판매금액 출력
--조건:판매량이 높은 순으로 정렬
--상품번호 상품명 총판매량 총판매금액
SELECT
    OG.GOOD_SEQ AS 상품번호,
    G.GOOD_NAME AS 상품명,
    SUM(NVL(OG.ORDER_AMOUNT,0)) AS 총판매량,
    SUM(O.TOT_PRICE) AS 총판매금액
FROM 
    GOODS G, 
    ORDERS_GOODS OG, 
    ORDERS O
WHERE G.GOOD_SEQ = OG.GOOD_SEQ(+)
AND OG.ORDER_CODE = O.ORDER_CODE(+)
GROUP BY OG.GOOD_SEQ, G.GOOD_NAME
ORDER BY  총판매량 DESC;





--문제 5
--회원아이디  총구매횟수   총구매금액
--조건1 : 구매금액이 높은 순 출력
 SELECT
    U.USER_SEQ AS 회원번호,
    U.USER_ID AS 회원아이디,
    COUNT(O.USER_SEQ) AS 총구매횟수,
    SUM(O.TOT_PRICE) AS 총구매금액
FROM
    USERS U,
    ORDERS O
WHERE U.USER_SEQ = O.USER_SEQ(+)
GROUP BY U.USER_SEQ, U.USER_ID
ORDER BY 회원번호;





--6. 휴먼회원 통계
--구매실적이 전혀 없는 회원 목록 출력
SELECT
    U.USER_ID AS 회원아이디,
    U.USER_NAME AS 회원이름,
    COUNT(O.USER_SEQ) AS 구매횟수,
    DECODE(COUNT(O.USER_SEQ),0,'휴면계정',' ') AS 기타
FROM
    USERS U,
    ORDERS O
WHERE U.USER_SEQ = O.USER_SEQ(+)
GROUP BY U.USER_ID, U.USER_NAME;

--정답
SELECT
    U.USER_ID, 
    U.USER_NAME
FROM USERS U
WHERE U.USER_SEQ NOT IN (SELECT O.USER_SEQ FROM ORDERS O)
AND U.USER_GUBUN !='A';

--MINUS 사용한 형태
SELECT 
    U.USER_ID, 
    U.USER_NAME
FROM USERS U
WHERE U.USER_SEQ IN
    (
    (SELECT USER_SEQ FROM USERS U)
    MINUS
    (SELECT USER_SEQ FROM ORDERS O)
    );





--문제 7
--전체 회원 목록 중 휴먼 회원이 차지하는 비율?
--조건1 : 관리자 제외
--조건2: 휴먼회원은 구매 실적이 전혀 없는 회원
-- 회원수   휴먼회원비율
SELECT HCNT || '/' || MCNT AS 회원수, (HCNT/MCNT*100) AS 휴면회원비율
FROM (
        SELECT *
        FROM (
            SELECT COUNT(1) AS HCNT
            FROM ( (SELECT USER_SEQ FROM USERS U)
                    MINUS
                    (SELECT USER_SEQ FROM ORDERS O)
                )
            )H,
            (SELECT COUNT(1) AS MCNT FROM USERS WHERE USER_GUBUN !='A') M
     );





--문제 8
--각 회원별로 매니저-회원 관계를 출력하시오
--조건1: 관리자 제외
--조건2: 매니저번호 오름차순 회원번호 오름차순 정렬
SELECT
    M.USER_ID AS 매니저, 
    U.USER_ID AS 회원
FROM 
    USERS U,
    USERS M
WHERE U.MGR_SEQ = M.USER_SEQ
AND M.USER_GUBUN != 'A'
ORDER BY M.USER_SEQ ASC, U.USER_SEQ ASC;





--문제 9 
--주문/상품/업체 대시보드 현황판
-- 총주문수량 총주문금액  총회원수  총업체수 총상품수
-- 58         1025000     5         7        12
SELECT
    (SELECT SUM(ORDER_AMOUNT) FROM ORDERS_GOODS) AS 총주문수량,
    (SELECT SUM(TOT_PRICE)FROM ORDERS) AS 총주문금액,
    (SELECT COUNT(USER_SEQ)FROM USERS) AS 총회원수,
    (SELECT COUNT(COM_SEQ)FROM COMPANY) AS 총업체수,
    (SELECT COUNT(GOOD_SEQ)FROM GOODS) AS 총상품수
FROM DUAL;





--문제 10
--월별 판매 실적
--  1월   2월   3월   4월  
-- 20000  12000  50000
SELECT 
    SUM(DECODE( TO_CHAR(ORDER_DATE,'MM'), '01', TOT_PRICE, 0)) AS 월1,
    SUM(DECODE( TO_CHAR(ORDER_DATE,'MM'), '02', TOT_PRICE, 0)) AS 월2,
    SUM(DECODE( TO_CHAR(ORDER_DATE,'MM'), '03', TOT_PRICE, 0)) AS 월3,
    SUM(DECODE( TO_CHAR(ORDER_DATE,'MM'), '04', TOT_PRICE, 0)) AS 월4,
    SUM(DECODE( TO_CHAR(ORDER_DATE,'MM'), '05', TOT_PRICE, 0)) AS 월5,
    SUM(DECODE( TO_CHAR(ORDER_DATE,'MM'), '06', TOT_PRICE, 0)) AS 월6,
    SUM(DECODE( TO_CHAR(ORDER_DATE,'MM'), '07', TOT_PRICE, 0)) AS 월7,
    SUM(DECODE( TO_CHAR(ORDER_DATE,'MM'), '08', TOT_PRICE, 0)) AS 월8,
    SUM(DECODE( TO_CHAR(ORDER_DATE,'MM'), '09', TOT_PRICE, 0)) AS 월9,
    SUM(DECODE( TO_CHAR(ORDER_DATE,'MM'), '10', TOT_PRICE, 0)) AS 월10,
    SUM(DECODE( TO_CHAR(ORDER_DATE,'MM'), '11', TOT_PRICE, 0)) AS 월11,
    SUM(DECODE( TO_CHAR(ORDER_DATE,'MM'), '12', TOT_PRICE, 0)) AS 월12
FROM ORDERS
WHERE ORDER_DATE BETWEEN TO_DATE('2018-01','YYYY-MM') AND TO_DATE('2018-12','YYYY-MM'); 
