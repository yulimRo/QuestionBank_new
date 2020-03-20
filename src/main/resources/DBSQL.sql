###################### 3.16 QuestionBank 프로젝트에서 사용되는 디비 #######################

drop database testdb;

create database testdb;

use testdb;

create table tb1_board(
                          bno int,
                          title varchar(2000),
                          content varchar(100),
                          writer varchar(100)

);

alter table tb1_board add constraint pk_board primary key (bno);

create table tb1_reply
(
    rno   int,
    bno   int,
    reply varchar(1000) not null,
    replyer varchar(50) not null,
    replyDate datetime default sysdate(),
    updateDate datetime default sysdate()
);

alter table tb1_reply add constraint pk_reply primary key (rno);

alter table tb1_reply add constraint fk_reply foreign key (bno) references tb1_board(bno);


insert into tb1_board(bno,title,content,writer) values( 0, '첫번째 테스트제목','테스트 내용','user00');
insert into tb1_board(bno,title,content,writer) values( 1, '테스트제목','테스트 내용','user00');
insert into tb1_board(bno,title,content,writer) values( 2, '테스트제목','테스트 내용','user00');
insert into tb1_board(bno,title,content,writer) values( 3, '테스트제목','테스트 내용','user00');
insert into tb1_board(bno,title,content,writer) values( 4, '테스트제목','테스트 내용','user00');
insert into tb1_board(bno,title,content,writer) values( 5, '테스트제목','테스트 내용','user00');
insert into tb1_board(bno,title,content,writer) values( 6, '테스트제목','테스트 내용','user00');
insert into tb1_board(bno,title,content,writer) values( 7, '테스트제목','테스트 내용','user00');
insert into tb1_board(bno,title,content,writer) values( 8, '테스트제목','테스트 내용','user00');
insert into tb1_board(bno,title,content,writer) values( 9, '테스트제목','테스트 내용','user00');
insert into tb1_board(bno,title,content,writer) values( 10, '10 테스트제목','테스트 내용','user00');
insert into tb1_board(bno,title,content,writer) values( 11, '테스트제목','테스트 내용','user00');
insert into tb1_board(bno,title,content,writer) values( 12, '테스트제목','테스트 내용','user00');
insert into tb1_board(bno,title,content,writer) values( 13, '테스트제목','테스트 내용','user00');
insert into tb1_board(bno,title,content,writer) values( 14, '테스트제목','테스트 내용','user00');
insert into tb1_board(bno,title,content,writer) values( 15, '테스트제목','테스트 내용','user00');
insert into tb1_board(bno,title,content,writer) values( 16, '테스트제목','테스트 내용','user00');
insert into tb1_board(bno,title,content,writer) values( 17, '테스트제목','테스트 내용','user00');
insert into tb1_board(bno,title,content,writer) values( 18, '테스트제목','테스트 내용','user00');
insert into tb1_board(bno,title,content,writer) values( 19, '테스트제목','테스트 내용','user00');
insert into tb1_board(bno,title,content,writer) values( 20, '새로운 테스트제목','새로운 테스트 내용','새로운 user00');

insert into tb1_reply(rno,bno,reply,replyer) values(1,12,'일','user');
insert into tb1_reply(rno,bno,reply,replyer) values(2,15,'이','user');
insert into tb1_reply(rno,bno,reply,replyer) values(3,20,'삼','user');
insert into tb1_reply(rno,bno,reply,replyer) values(4,20,'시','user');
insert into tb1_reply(rno,bno,reply,replyer) values(5,12,'오','user');
insert into tb1_reply(rno,bno,reply,replyer) values(6,15,'일','user');
insert into tb1_reply(rno,bno,reply,replyer) values(7,14,'이','user');
insert into tb1_reply(rno,bno,reply,replyer) values(8,12,'삼','user');
insert into tb1_reply(rno,bno,reply,replyer) values(9,12,'시','user');
insert into tb1_reply(rno,bno,reply,replyer) values(10,20,'오','user');
insert into tb1_reply(rno,bno,reply,replyer) values(11,11,'일','user');
insert into tb1_reply(rno,bno,reply,replyer) values(12,12,'이','user');
insert into tb1_reply(rno,bno,reply,replyer) values(13,13,'삼','user');
insert into tb1_reply(rno,bno,reply,replyer) values(14,14,'시','user');
insert into tb1_reply(rno,bno,reply,replyer) values(15,15,'오','user');
insert into tb1_reply(rno,bno,reply,replyer) values(16,16,'일','user');
insert into tb1_reply(rno,bno,reply,replyer) values(17,17,'이','user');
insert into tb1_reply(rno,bno,reply,replyer) values(18,18,'삼','user');
insert into tb1_reply(rno,bno,reply,replyer) values(19,19,'시','user');
insert into tb1_reply(rno,bno,reply,replyer) values(20,20,'오','user');
insert into tb1_reply(rno,bno,reply,replyer) values(21,20,'일','user');
insert into tb1_reply(rno,bno,reply,replyer) values(22,20,'이','user');
insert into tb1_reply(rno,bno,reply,replyer) values(23,20,'삼','user');
insert into tb1_reply(rno,bno,reply,replyer) values(24,20,'시','user');
insert into tb1_reply(rno,bno,reply,replyer) values(25,20,'오','user');
insert into tb1_reply(rno,bno,reply,replyer) values(26,20,'일','user');
insert into tb1_reply(rno,bno,reply,replyer) values(27,20,'이','user');
insert into tb1_reply(rno,bno,reply,replyer) values(28,20,'삼','user');
insert into tb1_reply(rno,bno,reply,replyer) values(29,20,'시','user');

CREATE TABLE USER_TB
(
    USER_CODE             INT AUTO_INCREMENT NOT NULL ,
    NAME                  VARCHAR(100)  NULL ,
    ID                    VARCHAR(100)  NULL ,
    PWD                   VARCHAR(200)  NULL ,
    PHONE                 VARCHAR(20)  NULL ,
    MAIL                  VARCHAR(100)  NULL DEFAULT 'N',
    REG_TIME datetime default sysdate() NULL,
    UPDATE_TIME datetime default sysdate() NULL,
    PRIMARY KEY (USER_CODE)
);


INSERT INTO USER_TB(NAME, ID, PWD, PHONE, MAIL) VALUES('노유림', 'yl','1111','010-3450-2766','yyj2766@naver.com');
INSERT INTO USER_TB(NAME, ID, PWD, PHONE) VALUES('이상욱', 'sw','2222','010-3684-4134');
INSERT INTO USER_TB(NAME, ID, PWD, PHONE) VALUES('채아담', 'ad','3333','010-9896-8245');
INSERT INTO USER_TB(NAME, ID, PWD, PHONE) VALUES('이소현', 'sh','4444','010-9443-9232');

/*
 *************** 카테고리 테이블 *******************
 * 카테고리 번호
 * 카테고리 이름
 */

CREATE TABLE CATEGORY_TB
(
    CATE_CODE             INT  NOT NULL ,
    CATE_NAME             VARCHAR(100) ,
    PRIMARY KEY (CATE_CODE)
);
INSERT INTO CATEGORY_TB(CATE_CODE, CATE_NAME) VALUES(1,'데이터베이스');
INSERT INTO CATEGORY_TB(CATE_CODE, CATE_NAME) VALUES(2,'자료구조');
INSERT INTO CATEGORY_TB(CATE_CODE, CATE_NAME) VALUES(3,'C언어');
INSERT INTO CATEGORY_TB(CATE_CODE, CATE_NAME) VALUES(4,'JAVA');
INSERT INTO CATEGORY_TB(CATE_CODE, CATE_NAME) VALUES(5,'알고리즘');
INSERT INTO CATEGORY_TB(CATE_CODE, CATE_NAME) VALUES(6,'빅데이터');
INSERT INTO CATEGORY_TB(CATE_CODE, CATE_NAME) VALUES(7,'머신러닝');
INSERT INTO CATEGORY_TB(CATE_CODE, CATE_NAME) VALUES(8,'파이썬');

CREATE TABLE QUIZ_GROUP_TB
(
    GROUP_CODE            INT  NOT NULL ,
    GROUP_NAME            VARCHAR(100)  NOT NULL ,
    ADMIN_USER_CODE       INT  NOT NULL,
    NUMBER_OF_PARTICIPANTS INT NULL DEFAULT 99,
    REG_TIME datetime default sysdate() NULL,
    UPDATE_TIME datetime default sysdate() NULL,
    primary key (GROUP_CODE)
);

INSERT INTO QUIZ_GROUP_TB(GROUP_CODE, GROUP_NAME, ADMIN_USER_CODE,NUMBER_OF_PARTICIPANTS) VALUES(1,'퀴z퀴z',1,30);
INSERT INTO QUIZ_GROUP_TB(GROUP_CODE, GROUP_NAME, ADMIN_USER_CODE,NUMBER_OF_PARTICIPANTS) VALUES(2,'디비디비딥',2,20);
INSERT INTO QUIZ_GROUP_TB(GROUP_CODE, GROUP_NAME, ADMIN_USER_CODE,NUMBER_OF_PARTICIPANTS) VALUES(3,'아이고아이고리',2,99);



CREATE TABLE QUIZ_CATE_TB
(
    GROUP_CODE            INT  NOT NULL ,
    GROUP_CATE            INT  NULL ,
    REG_TIME datetime default sysdate() NULL,
    UPDATE_TIME datetime default sysdate() NULL,
    FOREIGN KEY (GROUP_CATE) REFERENCES CATEGORY_TB(CATE_CODE),
    FOREIGN KEY (GROUP_CODE) REFERENCES QUIZ_GROUP_TB(GROUP_CODE)
);



create index idx_reply on tb1_reply (bno desc, rno asc);


insert into QUIZ_CATE_TB(group_code, group_cate) values (1,3);
insert into QUIZ_CATE_TB(group_code, group_cate) values (1,7);
insert into QUIZ_CATE_TB(group_code, group_cate) values (1,4);

insert into QUIZ_CATE_TB(group_code, group_cate) values (2,1);
insert into QUIZ_CATE_TB(group_code, group_cate) values (2,2);
insert into QUIZ_CATE_TB(group_code, group_cate) values (2,5);
insert into QUIZ_CATE_TB(group_code, group_cate) values (2,5);


insert into QUIZ_CATE_TB(group_code, group_cate) values (3,6);
insert into QUIZ_CATE_TB(group_code, group_cate) values (3,2);
insert into QUIZ_CATE_TB(group_code, group_cate) values (3,8);


select group_code ,group_name, name, admin_user_code ,NUMBER_OF_PARTICIPANTS ,reg_time,update_time
from( select row_number() over (order by group_code desc) as rno, group_code ,group_name, name, admin_user_code ,NUMBER_OF_PARTICIPANTS,reg_time,update_time from QUIZ_GROUP_TB,USER_TB) as tb1 limit 3;