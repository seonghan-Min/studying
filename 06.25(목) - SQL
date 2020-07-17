CMD

Microsoft Windows [Version 10.0.18363.900]
(c) 2019 Microsoft Corporation. All rights reserved.          %CMD 오픈

Enter user-name: system         %sql 로그인
Enter password:

Connected to:
Oracle Database 11g Express Edition Release 11.2.0.2.0 - 64bit Production

SQL> create user kpc identified by "0000";					%계정 생성

User created.

SQL> grant dba to kpc;          %생성한 계정으로 로그인

Grant succeeded.

SQL> exit
Disconnected from Oracle Database 11g Express Edition Release 11.2.0.2.0 - 64bit Production

C:\Users\user>sqlplus kpc/0000

SQL*Plus: Release 11.2.0.2.0 Production on 수 6월 24 17:03:28 2020

Copyright (c) 1982, 2014, Oracle.  All rights reserved.


Connected to:
Oracle Database 11g Express Edition Release 11.2.0.2.0 - 64bit Production

SQL> select * from tab;

no rows selected

SQL> select * from
  2  tab
  3  ;

no rows selected


% 127.0.0.1 = localhost
% xe = 기본폴더. 다만 관리 차원으로 상용으로는 사용하기 어렵다.
% orcl = 이 프로젝트 끝나면 포맷할거야.
% Oracle 은 대소문자 구분이 없다.

%% 매일매일 테스트 하도록 하겠다. 시험은 6주동안 총 35회 매일매일 치뤄질것이다.
% 정형화된 형태의 sql 시험지가 될 수도 있고, 주어진 과제를 수행하고 스샷을 제출할 수도 있고, 사람을 지목하여 질문응답을 할 수도 있다.
% 성적 미달할 경우 재시험. 재시험 통과 못할경우 숙제가 나갈 것. 숙제는 매우 간단(대중교통에서 할 수 있을 정도). 다음날 다시 테스트.
% 지속적으로 미달하고 질문에 여러번 답 하지 못할경우 그냥 없는 사람 취급하겠다.

%% <무조건 암기> 12개의 단어를 사용하여 4개의 문장을 완성.
% 테이블생성 CREATE TABLE 테이블명(~~);  -괄호 안에는 꽤 긴 문장이 들어간다.
    ~~ : 컬럼명 타입(크기) 옵션
      ex) name VARCHAR2(30)         - varchar2 : 1234라면 30글자 중 1234 네 글자를 제외한 나머지 26글자를 알아서 0으로 입력함.
          age NUMBER(3)             - 별도의 괄호 숫자를 적지 않으면 11자로 고정. 나이는 100세가 있으므로 3.
          gen CHAR(30)              - char : 1234라면 30글자 중 1234 네 글자를 제외한 나머지 26글자를 직접 0으로 입력해야함.
% 쓰기(CREATE, INSERT INTO 테이블명 VALUES('홍길동',30,'m')    -글자는 ''를 붙여야한다. 숫자는 상관없음.
% 읽기(READ, SELECT * FROM 테이블명;)  - * 은 '전부' 를 의미. 대신 name을 입력하면 name만 꺼내온다. name,age를 적으면 둘만 꺼내온다.
% 수정(UPDATE, UPDATE)
% 삭제(DELETE, DELETE)
