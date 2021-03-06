-----★연습문제★-----
--문제 1
--DALLAS에서 근무하는 사원의 이름, 직업, 부서번호, 부서이름을 출력
SELECT E.ENAME, E.JOB, E.DEPTNO, D.DNAME
FROM EMP E, DEPT D
WHERE E.DEPTNO=D.DEPTNO
AND D.LOC='DALLAS';

--문제 2
--이름에 'A'가 들어가는 사원들의 이름과 부서이름 출력
--LIKE 명령은 INDEX를 타지 않기 때문에 출력에 시간이 걸릴 수 있다.
--그럴 때 SUBSTR(ENAME,1,1)=A 와 같은 식으로 명령하면 시간을 단축할 수 있다.
--다만 'A가 들어가는 모든 사원 이름 출력' 과 같은 명령을 수행할 수 없다.
--A로 시작하는 사원의 이름과 같은 사원들은 가능하다.
SELECT E.ENAME, D.DNAME
FROM EMP E, DEPT D
WHERE E.DEPTNO=D.DEPTNO
AND ENAME LIKE '%A%';

--문제 3
--직업이 SALESMAN인 사원들의 직업과 사원이름, 부서이름 출력
SELECT E.ENAME, E.JOB, D.DNAME
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
AND JOB='SALESMAN';

--문제 4
--부서번호가 10, 20번인 사원들의 부서번호, 부서명, 사원명, 급여 출력.
--결과물을 부서번호가 낮은 순으로, 급여가 높은 순으로 정렬
SELECT E.DEPTNO, D.DNAME, E.ENAME, E.SAL
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
AND (E.DEPTNO=10 OR E.DEPTNO=20)
ORDER BY E.DEPTNO ASC, E.SAL DESC;

--문제 5
--사원번호가 7499 사원의 직업, 부서번호와 일치하는 사원정보 출력
SELECT * FROM EMP
WHERE (JOB, DEPTNO)
        =(SELECT JOB,DEPTNO FROM EMP 
            WHERE EMPNO=7499);

--문제 6            
--10번 부서의 사원들과 같은 월급을 받는 사원들의 이름, 월급, 부서번호 출력
SELECT ENAME, SAL, DEPTNO FROM EMP
WHERE SAL
        IN (SELECT SAL FROM EMP
            WHERE DEPTNO=10);
            
--문제 7
--BLAKE와 같은 부서에 있는 사원들의 이름과 고용일 출력
--위의 결과에서 BLAKE 자신은 제외하고 출력
SELECT ENAME, HIREDATE FROM EMP
WHERE DEPTNO
    =(SELECT DEPTNO FROM EMP
        WHERE ENAME='BLAKE')
AND ENAME !='BLAKE';

--문제 8
--커미션을 받는 사원과 부서번호, 월급이 같은 사원의 이름, 월급, 부서번호 출력
SELECT ENAME, SAL, DEPTNO FROM EMP
WHERE (DEPTNO, SAL)
        IN (SELECT DEPTNO, SAL FROM EMP
            WHERE COMM IS NOT NULL);
            
--문제 9
--MGR이 KING인 모든 사원의 이름과 급여 출력
SELECT E1.EMPNO, E1.MGR, E1.ENAME, E1.SAL, E2.ENAME AS MGRNAME
FROM EMP E1, EMP E2
WHERE E1.MGR = E2.EMPNO(+)
AND E1.MGR
    IN (SELECT E2.EMPNO FROM EMP
        WHERE E2.ENAME = 'KING');
        
--문제 10
--30번 부서 사원들과 월급과 커미션이 같지 않은 사원들의 이름, 월급, 커미션 출력
--MULTICAL IN 명령은 NULL 포함하는 즉시 먹통이 되어 아무런 값도 출력해내지 못한다.
SELECT ENAME, SAL, COMM FROM EMP
WHERE (SAL,COMM)
        NOT IN (SELECT SAL, COMM FROM EMP
            WHERE DEPTNO=30);
            
--문제 12
--EMP와 DEPT 테이블을 JOIN하여 부서번호, 부서명, 이름, 급여 출력
SELECT D.DEPTNO, D.DNAME, E.ENAME, E.SAL
FROM EMP E, DEPT D
WHERE D.DEPTNO=E.DEPTNO;

--문제 13
--이름이 ALLEN인 사원의 부서명을 출력
SELECT D.DNAME
FROM EMP E, DEPT D
WHERE D.DEPTNO=E.DEPTNO
AND E.ENAME='ALLEN';

SELECT D.DNAME
FROM EMP E RIGHT OUTER JOIN DEPT D
ON E.DEPTNO=D.DEPTNO
WHERE E.ENAME='ALLEN';

--문제 14
--DEPT TABLE에 있는 모든 부서를 출력
--위의 결과에 EMP TABLE를 JOIN하여 모든 사원의 이름, 부서번호, 부서명, 급여 출력
SELECT D.DEPTNO, D.DNAME, D.LOC, E.ENAME, E.SAL
FROM EMP E, DEPT D
WHERE E.DEPTNO=D.DEPTNO
ORDER BY D.DEPTNO;

--문제 15
--EMP TABLE의 모든 사원번호, 사원명, 매니저번호, 매니저명 출력
SELECT E1.ENAME, E1.EMPNO, E1.MGR, E2.ENAME AS MGRNAME
FROM EMP E1, EMP E2
WHERE E2.EMPNO=E1.MGR;

--문제 16
--ALLEN의 직업과 같은 사람의 이름, 부서명, 급여, 직무를 출력
SELECT E.ENAME, D.DNAME, E.SAL, E.JOB
FROM EMP E, DEPT D
WHERE E.DEPTNO=D.DEPTNO
AND JOB
    =(SELECT JOB FROM EMP
        WHERE ENAME='ALLEN');
       
--문제 17
--JONES가 속해있는 부서의 모든사람의 사원번호, 이름, 입사일, 급여 출력
SELECT EMPNO, ENAME, HIREDATE, SAL
FROM EMP
WHERE DEPTNO
        = (SELECT DEPTNO FROM EMP
            WHERE ENAME='JONES');
            
--문제 18
--10번 부서의 사람들 중에서 20번 부서의 사원과 같은 업무를 하는 사원의 
--사원번호, 이름, 부서명, 입사일, 지역 출력
SELECT E.EMPNO,E.DEPTNO, E.ENAME, D.DNAME, E.HIREDATE, D.LOC
FROM EMP E, DEPT D
WHERE E.DEPTNO=D.DEPTNO
AND JOB
    IN (SELECT JOB FROM EMP
        WHERE DEPTNO=20)
AND E.DEPTNO='10';

--문제 20
--10번 부서 중에서 30번 부서에는 없은 임무를 하는 사원의
--사원번호, 이름, 부서명, 입사일, 지역을 출력
SELECT E.EMPNO, E.ENAME, D.DNAME, E.HIREDATE, D.LOC
FROM EMP E, DEPT D
WHERE E.DEPTNO=D.DEPTNO
AND JOB
    NOT IN (SELECT JOB FROM EMP
            WHERE DEPTNO = 30)
AND E.DEPTNO=10;

--문제 21
--10번 부서와 같은 일을 하는 사원의 사원번호, 이름, 부서명, 지역, 급여 출력
--위의 내용을 급여가 많은 순으로 출력
SELECT E.EMPNO, E.ENAME, E.JOB, D.DNAME, D.LOC, E.SAL
FROM EMP E, DEPT D
WHERE E.DEPTNO=D.DEPTNO
AND JOB IN
    (SELECT JOB FROM EMP
        WHERE DEPTNO=10)
ORDER BY E.SAL DESC;

--문제 22
--MARTIN 이나 SCOTT의 급여와 같은 사원의 사원번호, 이름, 급여 출력
SELECT EMPNO, ENAME, SAL
FROM EMP
WHERE SAL = ANY 
    (SELECT SAL FROM EMP
        WHERE (ENAME='MARTIN' OR ENAME='SCOTT'));
        
--문제 23        
--EMP 테이블에서 사원번호가 7521인 사원의 직업과 같고
--사원번호가 7934인 사원의 급여보다 많은 사원의
--사원번호, 이름, 직업, 급여 출력
SELECT EMPNO, ENAME, JOB, SAL
FROM EMP
WHERE JOB IN
    (SELECT JOB FROM EMP
        WHERE EMPNO=7521)
AND SAL >=
    (SELECT SAL FROM EMP
        WHERE EMPNO=7934);
        
--문제 24
--각 사원 별 시급을 계산하여 부서번호, 사원명, 시급 출력
--조건1 : 근무시간은 180시간. 소수 두 번째 자리 반올림
--조건2 : 시급은 소수 두 번째 자리에서 반올림.
--조건3 : 부서별로 오름차순.
--조건4 : 시급이 많은 순 출력.

--해당 문제에서 ROUND를 두 번 써서 문제를 풀었다.
--하지만 수식이 복잡해지고 내용이 많아지면 시간이 오래 걸릴 수 있다.
--이럴 땐 우리가 보고자 하는 SELECT 문의 결과를 하나의 테이블로 보고
--FROM 명령에 EMP 테이블이 아닌 SELECT 결과 테이블을 집어넣으면 된다.
--이를 INLINE VIEW 라고 한다.
SELECT DEPTNO, ENAME, ROUND(SAL/160,1) AS 시급 FROM EMP
WHERE ROUND(SAL/160,1)>10
ORDER BY DEPTNO ASC, 시급 DESC;

SELECT *
FROM (SELECT DEPTNO, ENAME, ROUND(SAL/160,1) AS 시급 FROM EMP) W
WHERE W.시급 >10
ORDER BY DEPTNO, 시급 DESC;

--문제 25
--각 사원 별 커미션이 0 또는 NULL이고
--부서 위치가 GO로 끝나는 사원의 사원번호, 사원명, 커미션, 부서번호, 부서명, 부서위치 출력
--조건: 커미션이 NULL이면 0으로 출력
SELECT E.EMPNO, E.ENAME, NVL(E.COMM,0) AS COMM
    , E.DEPTNO, D.DNAME, D.LOC
FROM EMP E, DEPT D
WHERE E.DEPTNO=D.DEPTNO
AND NVL(E.COMM,0)=0
AND D.LOC LIKE '%GO';

--문제 26
--1981년 6월 1일 ~ 1981년 12월 31일 입사자 중
--부서명이 SALES인 사원의 부서번호, 사원명, 직업, 입사일 출력
--조건: 입사일 오름차순 정렬
SELECT E.DEPTNO, E.ENAME, E.JOB, E.HIREDATE, D.DNAME
FROM EMP E, DEPT D
WHERE E.DEPTNO=D.DEPTNO 
AND TO_CHAR(HIREDATE) BETWEEN TO_DATE('1981-06-01','YYYY-MM-DD') AND TO_DATE('1981-12-31','YYYY-MM-DD')
AND D.DNAME='SALES'
ORDER BY HIREDATE ASC;

--문제 27
--현재 시간과 현재 시간으로부터 한 시간 후의 시간을 출력
SELECT SYSDATE, SYSDATE+1/24 FROM DUAL;



-----★I CAN'T AWNSER THIS QUESTION★-----
--문제 28
--각 부서별 사원수를 출력하시오
--조건: 부서별 사원수가 없더라도 부서번호, 부서명 출력
--조건: 부서별 사원수가 0인경우 '없음; 출력
--조건: 부서번호 오름차순 정렬\
SELECT D.DEPTNO
    , D.DNAME
    , DECODE(COUNT(E.ENAME),0,'없음',COUNT(E.ENAME)) AS 사원수
FROM EMP E, DEPT D
WHERE E.DEPTNO(+) = D.DEPTNO
GROUP BY D.DEPTNO, D.DNAME
ORDER BY DEPTNO;

--문제 29
--각 사원의 사원번호, 사원명, 매니저번호, 매니저명 출력
--조건: 각 사원의 급여는 매니저 급여보다 많거나 같다
SELECT E1.EMPNO, E1.ENAME, E1.MGR, E2.ENAME AS MGRNAME
FROM EMP E1, EMP E2
WHERE E1.MGR=E2.EMPNO
AND E1.SAL >= E2.SAL;

--문제 30
--각 부서별로 1981년 5월 31일 이후 입사자의 부서번호, 부서명, 사원번호, 사원명, 입사일 출력
--조건: 부서별 사원정보가 없더라도 부서번호, 부서명 출력
--조건: 부서번호, 입사일 오름차순 정렬
SELECT D.DEPTNO, D.DNAME, E.EMPNO
    , E.ENAME, E.HIREDATE
FROM EMP E, DEPT D
WHERE E.DEPTNO(+) = D.DEPTNO
AND HIREDATE(+) > TO_DATE('1981-05-31')
ORDER BY D.DEPTNO, E.HIREDATE ;


--문제 31
--입사일로부터 지금까지 근무년수가 30년 이상인 사원
--사원번호, 사원명, 입사일, 근무년수 출력
--조건: 근무년수는 월을 기준으로 버림
--TRUNC(A,B) = A를 소숫점 B 자리까지 표시하는 명령. B 뒷자리는 반올림 없이 버린다.
--ROUND(A,B) = A를 소숫점으로 B자리까지 표시하는 명령. B 뒷자리는 반올림한다.
SELECT *
FROM (SELECT EMPNO
            , ENAME
            , TO_CHAR(HIREDATE,'YYYY-MM-DD') AS HIREDATE
            , TRUNC(MONTHS_BETWEEN(SYSDATE, HIREDATE)/12,0) AS 근속년수 FROM EMP)
WHERE 근속년수 >=30;

-----★면접★-----
--CRUD를 구사하여 응용할 수 있고, SUBQUERY나 JOIN 을 사용할 수 있다.
--이를 ANSI-SQL로 변환할 줄 안다.
