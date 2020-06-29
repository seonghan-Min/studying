-----★PREVIOUS CLASS TEST★-----
--문제: 사원명이 A로 시작하고 부서번호가 20번인 사원정보 출력
select * from emp
where ename like 'A%' and deptno='20';

--문제: 입사일이 1981년 5월 이후 입사자인 사원정보 출력
select * from emp
where hiredate>to_date('01-06-1981','dd-mm-yyyy');

--문제: 2000초과 3000미만의 급여를 받는 사원정보 출력
select * from emp
where sal>'2000' and sal<'3000';
select * from emp
where sal between '2001' and '2999';

--문제: 커미션을 받지 않는 사원정보 출력
--NVL(COLUM_NAME,TYPE_DATA)은 해당 COLUM에서 NULL값이 있는 데이터를 TYPE_DATA로 표시하라는 명령어다.
--이 때 TYPE_DATA는 해당 COLUM의 DATA_TYPE과 동일한 TYPE의 데이터를 입력해야한다.
--예를들어 COLUM의 내용이 SALARY이고 TYPE이 NUMBER일 경우 반드시 NUMBER_TYPE의 데이터만 입력해야 오류가 출력되지 않는다.
--만약 NUMBER_TYPE_COLUM_DATA의 NULL 값을 CHAR_TYPE_DATA로 표시하고 싶다면
--NUMBER_TYPE_COLUM_DATA를 TO_CHAR() 명령어를 사용하여 CHAR_TYPE 형태로 전환시켜준 뒤
--NVL(COLUM,'CHAR_TYPE') 으로 표기하면 오류 없이 정상적으로 값이 출력된다.
select * from emp
where comm is null or comm='0';
select * from emp
where nvl(comm,0)=0;

--문제: 모든 사원정보를 출력하되 사수가 없는 사원의 사수란을 없음으로 출력
select EMPNO,ENAME,JOB,HIREDATE,SAL,COMM,DEPTNO,NVL(TO_CHAR(MGR),'대표') from emp;

--문제: 직업이 clerk 또는 salesman이고 급여가 1000 이상인 사원정보 출력
select * from emp
where (job='CLERK' or job='SALESMAN') and sal>='1000';
select * from emp
where job in('CLERK','SLAESMAN') and sal>-1000;





-----★SUBQUERY★-----
--문제: 급여가 2975이상인 사원정보
select ENAME,SAL from emp
where sal>=2975;


--문제: JONES의 급여는?
SELECT SAL FROM EMP
WHERE ENAME='JONES';


--문제: 급여가 (jONES의 급여) 이상인 사원정보
--위의 문제와 똑같은 내용에서 2975를 JONES의 급여로 바꿔 표시하는것이 SUBQUERY 이다.
--문제를 통해 괄호 안에서 먼저 구해야 할 내용의 명령어를 우선적으로 입력한다.
--이후 전체적인 틀의 명령어를 입력해준 뒤
--우선적으로 구한 명령어를 괄호 안에 복붙하는 과정으로 진행한다.
--그러한 과정을 생략하고 큰 틀부터 시작하여 괄호 안의 명령어를 작성하기 시작하면
--나중에 오류가 출력되었을 때 수정하기 복잡하고 어려워지기 때문이다.
SELECT ENAME,SAL FROM EMP
WHERE SAL>=
    (SELECT SAL FROM EMP
    WHERE ENAME='JONES')
;


--문제: SMITH의 직업과 같은 사원
SELECT ENAME,JOB FROM EMP
WHERE JOB=
    (SELECT JOB FROM EMP
    WHERE ENAME = 'SMITH')
;


--문제: 사원번호가 7900이거나 7695인 사원의 직업과 같은 사원들의 이름 출력하라
--일반적으로 하나의 데이터에는 하나의 데이터가 할당되어야만 한다.
--SUBQUERY 로 들어가있는 명령문의 결과는 CLERK 와 SALESMAN이다.
--하지만 JOB= 로 NAME을 표시하기엔 직업이 두 개 이기 때문에 오류가 출련된다.
--이럴 때는 = 이 아닌 IN 으로 사용하거나
--JOB= 을 CLERK와 SALESMAN 각각 두 개를 넣어 SUBQUERY를 2개 사용하면 된다.
SELECT ENAME,JOB,EMPNO FROM EMP
WHERE JOB IN
    (SELECT JOB FROM EMP
    WHERE EMPNO='7900' OR EMPNO='7698')
;


--문제: 사원번호가 7876인 사원의 직업과 같고, 사원번호가 7369인 사원의 급여보다 많이 받는 사람들의 이름과 직업을 출력.
SELECT ENAME,JOB,SAL FROM EMP
WHERE JOB=
    (SELECT JOB FROM EMP
    WHERE EMPNO='7876')
AND SAL>
    (SELECT SAL FROM EMP
    WHERE EMPNO='7369')
;

--문제: 사번이 7876인 사원의 직업과 같고, 그의 급여보다 많이 받는 사원의 이름과 직업과 급여 출력
SELECT ENAME,JOB,SAL FROM EMP
WHERE JOB=
    (SELECT JOB FROM EMP WHERE EMPNO=7876)
AND SAL>
    (SELECT SAL FROM EMP WHERE EMPNO=7876)  ;

--문제: 사번 7876인 사원과 직업과 급여가 같은 사원의 이름과 직업과 급여 출력
SELECT ENAME, JOB, SAL FROM EMP
WHERE (JOB,SAL) = (SELECT JOB,SAL FROM EMP WHERE EMPNO=7876);

--문제:사원번호가 7499인 사원의 직업, 부서번호와 일치하는 사원의 정보를 출력
SELECT * FROM EMP
WHERE (JOB,DEPTNO) =
    (SELECT JOB,DEPTNO FROM EMP
    WHERE EMPNO=7499)
;





-----★JOIN★-----
--문제: 급여가 임의의 SALESMAN 보다 낮으면서 직급이 SALESMAN이 아닌 사원의 정보를 출력
--ANY는 조건 중 하나라도 만족시키면 결과를 출력하는 명령어이다.
--SALESMAN의 급여는 각각 1250, 1500, 1600 이다.
--ANY 명령어를 사용하면 800의 급여를 받는 SMITH도 조건에 해당하고
--1300의 급여를 받는 MILLER 또한 1500과 1600보다 낮기 때문에 조건에 해당한다.
SELECT * FROM EMP
WHERE SAL< ANY
    (SELECT SAL FROM EMP
    WHERE JOB='SALESMAN')
AND JOB <>'SALESMAN'
;

--문제: 급여가 SLAESMAN보다 적으면서 직급이 SALESMAN이 아닌 사원의 정보를 출력
--ALL은 주어진 조건을 모두 만족시켜야만 결과에 출력시키는 명령어이다.
--SALESMAN의 급여가 1250, 1500, 1600 이므로
--위의 문제에서 결과에 출력됐던 MILLER는 1250보다 큰 1300을 받고 있으므로
--조건에 충족되지 않아 결과에 출력되지 않는다.
SELECT * FROM EMP
WHERE SAL < ALL
    (SELECT SAL FROM EMP
    WHERE JOB='SALESMAN')
AND JOB <>'SALESMAN'
;

--문제: EMP TABLE 의 ENAME, DEPTNO 와 DEPT TABLE의 DEPTNO를 동시에 출력하라
--TABLE_EMP의 ENAME과 DEPTNO를 TABLE_DETP의 DETPNO와 연결하는 것을 JOIN 이라고 한다.
--이 때 DEPT TABLE의 DEPTNO가 PK(PRIMARY KEY), EMP TABLE의 DEPTNO를 FK(FOREIGN KEY) 라고 한다.
SELECT EMP.ENAME, EMP.DEPTNO, DEPT.DEPTNO FROM EMP, DEPT
WHERE EMP.DEPTNO=DEPT.DEPTNO;

--JOIN의 종류는 크게 SELFJOIN 과 OUTHERJOIN이 있다.
--OUTHERTJOIN에는 LEFTJOIN, RIGHTJOIN, FULLJOIN 으로 나뉜다.
--위의 세 개 조인에는 각각 EQUAIJOIN, NONEQUIJOIN 으로 나뉜다.
--EQUAIJOIN은 데이터의 여부가 값이 같은것을 출력하는 JOIN을 말한다.
--NONEQUJOIN은 데이터의 여부가 값이 IN, ANY, ALL 을 출력하는 JOIN을 말한다.

--TABLE EMP의 DEPTNO 데이터는 10, 20, 30 뿐이다.
--하지만 TABLE DEPT의 DEPTNO는 10, 20, 30, 40 의 데이터를 가지고있다.
--이 때 두 테이블의 DEPT만 연결시키면 TABLE DEPT의 DEPTNO 40 은 표시되지 않는다.
--이를 표시하기 위해 사용하는 JOIN이 OUTERJOIN이다.
--40의 데이터를 가지고 있는 쪽은 TABLE DEPT 이므로
--조건 명령에서 해당 데이터가 부족한 TABLE EMP의 DEPTNO 바로 옆에 (+) 를 붙여주면
--TABLE_EMP_NAME과 TABLE_EMP_DEPTNO 란에 NULL값을 표시하는 TABLE_DEPT_DEPTNO ROW가 표시된다.
--여기서 참조를 당하는 TABLE_DEPT가 PK, 참조를 하는 TABLE_EMP가 FK 이다.
SELECT E.ENAME, E.DEPTNO AS DDD, D.DEPTNO FROM EMP E, DEPT D
WHERE E.DEPTNO(+) = D.DEPTNO;

--(+)명령은 오직 오라클에서만 수행되는 언어이다.
--다른 언어(ANSI_ORACLE)에서는 조건 명령문인 FROM ~ ON~ 명령에서
--JOIN을 수행하는 쪽에 OUTERJOIN 명령을 적어주고
--JOIN을 당하는 쪽에 ON 명령을 적어주면 된다.
--이 때 해당 데이터가 부족한 TABLE에 (+) 붙여주던 오라클과 달리
--다른 언어에서는 해당 데이터를 가지고 있는 TABLE의 위치를 기준으로
--왼쪽에 있으면 LEFT, 오른쪽에 있으면 RIGHT를 적어주면 된다.
SELECT E.ENAME, E.DEPTNO AS A_DEPTNO, D.DEPTNO AS D_DEPTNO
FROM EMP E RIGHT OUTER JOIN DEPT D
ON E.DEPTNO=D.DEPTNO;

--OUTERJOIN의 조건문에 AND 조건을 붙여보자.
--D.DEPTNO = 40 은 데이터 값을 출력해내지만
--E.DEPTNO = 40 은 아무런 값을 출력해내지 않는다(오류는 없다).
--그 이유는 40의 데이터를 가지고 있는 TABLE이 D.DEPTNO 뿐이기 때문이다.
SELECT E.ENAME, E.DEPTNO AS DDD, D.DEPTNO FROM EMP E, DEPT D
WHERE E.DEPTNO(+) = D.DEPTNO
AND E.DEPTNO=40;

--문제: 사원번호, 사원명, 매니저번호, 매니저명 출력
--EMP TABLE의 MGR 과 EMP TABLE의 EMPNO를 연결시키는 SELFJOIN 명령이다.
--이 때 사원명 KING의 MGR은 없으므로 OUTERTJOIN을 입력해주지 않으면 KING은 결과에 출력되지 않는다.
--두 번째 명령문은 ANSI-ORACLE 명령문이다.
SELECT E1.EMPNO, E1.ENAME
        , NVL(TO_CHAR(E1.MGR),'PRESIDENT') AS MGR
        , NVL(TO_CHAR(E2.ENAME),'PRESIDENT') AS MGR_NAME 
        FROM EMP E1, EMP E2
WHERE E1.MGR=E2.EMPNO(+);

SELECT E1.EMPNO, E1.ENAME, E1.MGR, E2.ENAME AS MGR_NAME 
FROM EMP E1 LEFT OUTER JOIN EMP E2
ON E1.MGR=E2.EMPNO;

--해당하는 값을 중복을 제외하고 출력하는 방법이다.
--SELECT DEPTNO FROM EMP 명령을 수행하면
--EMP에 존재하는 모든 DEPTNO 값을 EMP ROW 수 만큼 출력해낸다.
--이 때 DISTINCT 명령을 적어주면 중복된 데이터를 전부 제외하고 ROW를 하나만 표시한다. 
SELECT DISTINCT DEPTNO FROM EMP;
SELECT DISTINCT DEPTNO FROM DEPT;



