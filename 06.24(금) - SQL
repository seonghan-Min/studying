https://garimoo.github.io/database/2018/04/16/oracle_db_structure.html  -오라클구조


%% --------------------
    creat <-> drop
    이 명령은 실행하는 즉시 commit or rollback 된다. 즉 돌이킬 수 없다. 따라서 조심해야 한다.
    이를 commit or rollback 이 불가능한 데이터 언어 DDL(Data Definition Language) 라고 한다.
    반대로 commit or rollback 이 가능한 데이터 언어를 DML(Data Manipulation Language) 이라고 한다.
    이와 같은 언어로 권한을 관리하는 언어를 DCL(Data Control Language) 라고 한다. 대표적으로 두 가지가 있다.
        gratn = 권한을 주는 것.
        revoke = 권한을 빼앗는 것.


%%--------------------

create table member(
  name varchar2(30),
  age number(3),
  gen char(2)
  );
  
  insert into member values('A',25,'F');
  insert into member values('B',26,'M');
  
  select * from member;
  
%%--------------------
  
insert into member(name,gen) values('C','FFF');
    여기서 gen은 2바이트인데 FFF는 3바이트 이므로 에러가 난다.

insert into member(name, age) values('D','11');
    문자를 표현하는 방법인 ''를 숫자에 넣어도 에러 없이 정상적으로 실행된다. 숫자는 세미콜론의 존재를 무시한다.
    다만 세미콜론'' 이 없는 문자는 에러를 발생시킨다.


%% -------------------

   name, age, gen 등을 colum 이라고 부른다.
   그리고 이 컬럼에 대한 데이터를 가지고 있는 한 줄을 row 라고 한다.
   쉽게 말해 엑셀 테이블의 세로줄은 colum, 가로줄은 row 라고 하는 것.
   만약 동명이인에 동성 동갑이라고 할 때, D를 지워야 하는데 C가 지워질수도 있는 상황.
   이 때 주민번호, 핸드폰번호, 주소 같은 개인정보는 사용할 수 없기 때문에 개개인을 식별할 수 있는 코드가 필요하다.
   그 상황에서 사용하는 것이 sequence 이다. row에 자동으로 부여되는 일렬번호(회원번호) 같은 개념이다.
   명령 언어로는 seq 로 줄여서 사용한다.

%% --------------------

   Delete 는 colum을 지울 수 없다. 언제나 지울수 있는 것은 row 이다.
   colum 의 데이터를 지울 수 있는 방법이 없다는 뜻이다.
   하지만 alter table table_name drop colum_name 을 사용하면 칼럼 자체를 지워버릴 수 있다.
   즉 칼럼의 데이터만 지우는 방법은 없지만, 칼럼 자체를 지울수는 있다.
   
   Delete는 테이블 속의 내용(값)을 지우는 명령어. (delete from table_name)
   Drop은 테이블 자체를 지워버리는 명령어. (drop table table_name)
   
   drop from table_name 처럼 두 명령어에서 from을 혼동하지 말도록 하자. 에러가 뜬다.
   
%% --------------------

update member set name='ss', age=44 where seq=1 and seq=2
   update는 create insert, delete 와 다르게 colum이 바로 오지 않고 table 이름이 바로 온다.
   ss 라는 이름의 사람의 age를 44로 바꾸겠다는 명령이다.
   다만 동명이인을 건드리지 않기 위해 where 명령어를 이용하여 일렬번호를 지정해줘야만 한다.
   여기서 seq는 절대로 콤마(,) 가 아닌 and 를 사용한다.
   
update member set name='ss'm age=44 where age=25 and seq=2
  and 명령어는 오직 seq 에서만 사용해야한다.
  만약 위의 내용처럼 age와 seq 사이에 and를 사용한다면
  ss의 이름을 가진 25살 데이터 전부와 seq 2번의 데이터까지 전부 age가 44로 수정된다. 
   
%% --------------------

/* creat table member(
    name varchar2(30),
    age number(3),
    gen char(2)
    );
*/

  F5를 누르면 처음부터 모든 명령을 다시 수행한다.
  하지만 첫 번째 명령에서 table이 이미 생성되어 있으므로 already igsisted 라는 에러가 도출된다.
  이와 같은 에러를 없애려면 이전에 수행한 명령을 스킵해야한다.
  /* */ 명령으로 문단을 감싸면 해당 문단은 회색 처리와 함께 F5에서 스킵된다.

%% --------------------

select rowid, rownum, name, age from member; 
  table을 보면 별도로 seq를 등록하지 않았음에도 좌측에 번호가 붙어있다.
  이 번호는 오라클에서 row에 임의로 부여해주는 번호이다. 이를 rowID 라고 한다.
  위의 명령을 실행하면 rowid 와 rownum가 나타난다.
  
%% --------------------

ALTER TABLE MEMBER ADD (SEQ NUMBER NOT NULL)
  colum을 수정하는 명령어는 update이나, table 자체를 수정하는 것은 alter이다.
  null = 데이터도 빈칸도 아님. 그냥 뚫려있음. 존재하지 않음.
  blank = 공란
  
%% ------------------

alter table table_name add colum_name data_type not null
alter table table_name modify colum_name data_type not null
alter table table_name drop colum_name data_type not null

차례대로 table을 구성하는 colum 을 추가 / 수정 / 삭제 하는 명령문이다.
data_type 은 varchar2, number, char 등의 타입을 말한다.
not null 과 같은 명령어는 옵션이므로 없어도 무관하다.
다만 not null을 옵션으로 입력할 경우 insert 에서 not null을 입력한 colum의 값을 무조건 입력해줘야만 한다.
  insert into member(seq, name, gen) values(44,'D','M');
  insert into member(name, gen) values('E','F');
  insert into member(seq, name, gen) values(55,'E',' ');
  insert into member(seq, name, gen) values(55,'E','');
    만약 seq colum에 not null 옵션을 입력해줬다면 두 번째 줄 명령어는 오류를 출력한다.
    세 번째 줄 명령어는 gen 칼럼의 data를 null 이 아닌 blank로 표시한다.
    네 번째 줄 명령어는 gen 칼럼의 data를 blank가 아닌 null 로 표시한다.
    
%% --------------------

primary key 조건 = not null, unique
primary key 를 지정해주면 not null을 따로 타이핑 할 필요 없다. 이미 내포하고 있기 때문.
만약 colum이 만들어져있지 않다면 create table table_name(colum_name data_type primary key) 의 명령어로 지정할 수 있다.
반대로 colum이 만들어져있다면 alter table table_name add constraint table_name_pk primary key(colum_name) enable; 명령어로 변경할 수 있다.

%% --------------------

create SEQUENCE sequence_name start with 1 increment by 1;
  위에서 seq를 지정하는 과정 없이, 각 row 만의 uniqe 하고 primary key로 사용 가능한 seq를 부여한다.
  start with 1 increment by 1은 1부터 시작하여 1씩 증분한다는 의미이다.
  seqence를 지정한다면 동일한 seq로 insert가 불가능하다.
    insert into member values(03,'A',11,'F');
    insert into member values(03,'B',15,'M');   seq가 03으로 동일하기 때문에 오류를 출력한다.
      insert into member values(member_seq.nextval,'A',11,'F');
      insert into member values(member_seq.nextval,'B',15,'M');   seqence_name.nextval 명령어는 자동으로 다음 seq를 입력하라는 명령어이다.
      
%% --------------------

CONSTRAINT PK_DEPT PRIMARY KEY,

%% --------------------

SELECT to_char(sysdate,'yyyy-mm-dd hh24:mi:ss') as to_Date FROM dual;
  to_char 는 글자형태로 나타내라는 명령어이다.
  sysdate 는 date_type 이라 글자 형태로 나타낼 수 없다. 이를 to_char 명령어를 통해 글자 형태로 나타내는 것이다.
  마찬가지로 숫자형태로 바꾸려면 to_number 로 나타내면 된다.
  yyyy-mm-dd hh24:mi:ss 는 대한민국 모든 기업에서 사용하는 국민포맷시간이다.
  sysdate는 now와 같은 의미이다. 현재 시간을 출력한다.
  as 는 sysdate를 내가 설정한 내용으로 도출시킨다.

%% --------------------

영업부서 사원이면서 19년 12월 26일에 입사한 사람을 출력하시오.
SELECT * FROM emp WHERE JOB='SALESMAN' AND HIREDATE=YYYY-MM-DD HH24:MI:SS';

%% --------------------

1980년대에 입사한 사원을 출력하시오
select * from emp
where hiredate>=to_date('01-01-1980','dd-mm-yyyy') and hiredate<=to_date('31-12-1980','dd-mm-yyyy');
  hiredate 를 date형태로 출력했을 때 1980.01.01 ~ 1980.12.31 안에 있는 사람을 출력하는 것이다.
  
SELECT * FROM EMP
WHERE SAL BETWEEN 2000 AND 3000;
  월급이 2000~3000 사이인 모든 사원정보를 출력한것이다.
  
%% --------------------

>>입사일이 1980년대인 사원정보 출력
select * from emp
where hiredate like '1980%'
  다만 이 방법은 index에서 모든 자료를 전부 검수하고 출력하는 방법이기 때문에 느리다. 그래서 추천하지 않는 방법이다.

>>이름이 s로 시작하는 사원정보 출력
select * from emp
where ename like 'S%';
  마찬가지로 느리기 때문에 추천하지 않는다.
  
>>이름에 A가 들어가는 사원정보 출력
SELECT * FROM EMP
WHERE ename LIKE '%A%';
  
>>이름의 두 번째 글자가 A인 사원정보 출력
SELECT * FROM EMP
WHERE ENAME LIKE '_A%';
  
%% -------------------

>>매니저가 없는 사원정보 출력
SELECT * FROM EMP
WHERE MGR IS NULL;
  NULL 은 UNKOWN VALUES 로서 값이 없다. 하지만 = 명령은 값을 비교하는 분이기 때문에 에러가 출력된다.
  이럴 땐 IS 명령문을 사용해야한다.
  
%% -------------------

>>NVL을 이용하여 MGR IS NULL 인 사원정보의 NUL을 99999로 출력.
SELECT EMPNO,ENAME,MGR,NVL(MGR,99999) FROM EMP;
  NVR 이란 컬럼을 보여주되 MGR 값이 존재하면 그것을, 존재하지 않으면 NULL을 띄우라는 것이다.

>>NVL을 이용하여 사수가 없는 사원정보 출력
SELECT * FROM EMP
WHERE NVL(MGR,99999) =99999;
  위와 동일한 포현이나 실제로 사용하기엔 좋지 않다. 실제로는 그저 IS NULL을 사용하는 것이 매우 효과적이고 보기도 좋다.
  
>>NVL을 이용하여 사수가 존재하는 사원정보 출력
WHERE NVL(MGR,99999) <>99999;

>>직업이 CLERK이면서 사수가 7788인 사원정보 출력
SELECT * FROM EMP
WHERE JOB='CLERK' AND MGR=7788;

>>직업이 CLERK이거나 급여가 1000이상인 사원정보 출력
SELECT * FROM EMP
WHERE JOB='CLERK' OR SAL>=1000;

>>(직업이 CLERK이고 급여가 1000이상)이고 직업이 SALESMAN
SELECT * FROM EMP
WHERE JOB='CLERK' AND SAL>=1000 OR JOB='SALESMAN';

>>(직업이 CLERK이고 급여가 1000이상) 이고 (직업이 SALESMAN이고 급여가 1500이상) 사원정보 출력
SELECT * FROM EMP
WHERE (JOB='CLERK' AND SAL>=1000) OR (JOB='SALESMAN' AND SAL>=1500);

%% ------------------

>>직업이 CLERK이거나 SALESMAN인 사원정보 출력
SELECT * FROM EMP
WHERE JOB='CLERK' OR job='SALESMAN';

SELECT * FROM EMP
WHERE JOB IN ('CLERK','SALESMAN');
  위의 명령문과 동일한 문장이다. 다만 OR이 아닌 IN 명령문을 사용했다.

SELECT * FROM EMP
WHERE JOB !='CLERK';
  위의 명령문에서 괄호 속 문장을 제외한 나머지를 표출하는 NOT 명령문이다.
  ! 를 사용하면 NOT을 의미한다. 이 때 구분하기 쉽게끔 띄어쓰기를 해주도록 하자.

SELECT * FROM EMP
WHERE JOB !='CLERK' AND JOB !='SALESMAN';

%% ------------------

이하 SQL 타이핑 내용





create table member(
seq number(11) not null primary key,
name varchar2(30),
age number(3),
gen char(2)
);

insert into member values(11,'A',25,'F');
insert into member values(22,'B',26,'M');
insert into member values(33,'C',27,'F');
insert into member values(44,'D',27,'F');


select * from member;
drop table member;
delete from member;
rollback;
commit;

select rowid, rownum, name, age from member;
alter table member add(seq number(11,0) not null);


insert into member(seq, name, gen) values(44,'D','M');
insert into member(name, gen) values('E','F');
insert into member values(44,'D','','M');
insert into member values(44,'D',null,' ');


ALTER TABLE MEMBER
ADD CONSTRAINT MEMBER_PK PRIMARY KEY 
(
  SEQ 
)
ENABLE;


create SEQUENCE member_seq start with 1 increment by 1;
insert into member values(member_seq.nextval,'A',11,'F');
insert into member values(member_seq.nextval,'B',15,'M');
insert into member values(member_seq.nextval,'B',17,'F');

select name,age from member where age=25 or age=26
