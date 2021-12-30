select * from PROFILE;

select * from diary;

select * from qna;

select * from profile

select * from q_reple

select * from test

select to_char(bir, 'YYYY-MM-DD') from profile;


CREATE DIARY 

CREATE SEQUENCE B_NO
INCREMENT BY 1
START WITH 1;

SELECT Q_TITLE
FROM(SELECT * from qna order by b_no desc)
where rownum =1;

UPDATE QNA SET Q_CONTENT='1', Q_PRIVATE='공개', Q_DATE=SYSDATE 
           				WHERE B_NO = (SELECT B_NO
           				FROM(SELECT * FROM QNA ORDER BY B_NO DESC)
	           			WHERE ROWNUM =1);
	           		
SELECT r.b_no, r.ID, r.Q_RE, p.NICK 
FROM PROFILE p, q_reple r
where r.ID = p.ID;   


create sequence d_no
increment by 1
start with 1;


drop sequence d_no; 

CREATE SEQUENCE T_NO
INCREMENT BY 1
START WITH 1;

