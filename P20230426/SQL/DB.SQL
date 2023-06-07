SELECT *FROM  TAB

INSERT INTO DEPARTMENT (dept_id,dept_name,office)
values('920','컴퓨터공학과','201호')

SELECT *FROM DEPARTMENT

INSERT INTO DEPARTMENT VALUES('920','컴퓨터공학과','201호')

INSERT INTO DEPARTMENT VALUES('923','산업공학과','207호')

INSERT INTO DEPARTMENT VALUES('925','전자공학과','308호')

SELECT * FROM STUDENT

INSERT INTO STUDENT 
   values('1292001','900424*1825409','김광식',3,'서울',920)
   
INSERT INTO STUDENT 
   values('1292002','900305*1730021','김정현',3,'서울',920)
   
INSERT INTO STUDENT 
   values('1292003','891021*2308302','김현정',4,'대전',920)
   
INSERT INTO STUDENT 
   values('1292301','890902*2704012','김현정',2,'대구',923)
   
INSERT INTO STUDENT 
   values('1292303','910715*1524390','박광수',3,'광주',923)
   
INSERT INTO STUDENT 
   values('1292305','921011*1809003','김우주',4,'부산',923)
   
INSERT INTO STUDENT 
   values('1292501','900825*1506390','박철수',3,'대전',925)
   
INSERT INTO STUDENT 
   values('1292502','911011*1809003','백태성',3,'서울',925)
   

INSERT INTO PROFESSOR 
   values('92001','590327*1839240','이태규','920','교수',1997)
   
INSERT INTO PROFESSOR 
   values('92002','690702*1350026','고희석','920','부교수',2003)
   
INSERT INTO PROFESSOR 
   values('92301','741011*2765501','최성희','923','부교수',2005)
   
INSERT INTO PROFESSOR 
   values('92302','750728*1102458','김태석','923','교수',1999)
   
INSERT INTO PROFESSOR 
   values('92501','620505*1200546','박철재','925','조교수',2007)
   
INSERT INTO PROFESSOR 
   values('92502','740101*1830264','장민석','925','부교수',2005)
   
   SELECT *FROM PROFESSOR
   
INSERT INTO COURSE values('C101','전산개론',3)

INSERT INTO COURSE values('C102','자료구조',3)

INSERT INTO COURSE values('C103','데이터',4)

INSERT INTO COURSE values('C301','운영체제',3)

INSERT INTO COURSE values('C302','컴터구조',3)

INSERT INTO COURSE values('C303','이산수학',4)

INSERT INTO COURSE values('C304','객지언어',4)

INSERT INTO COURSE values('C501','인공지능',3)

INSERT INTO COURSE values('C502','알고리즘',2)

INSERT INTO CLASS VALUES('C101-01','C101',2012,1,'A','92301','301호',40)

INSERT INTO CLASS VALUES('C102-01','C102',2012,1,'A','92001','209호',30)

INSERT INTO CLASS VALUES('C103-01','C103',2012,1,'A','92501','208호',30)

INSERT INTO CLASS VALUES('C103-02','C103',2012,1,'B','92301','301호',30)

INSERT INTO CLASS VALUES('C501-01','C501',2012,1,'A','92501','103호',45)

INSERT INTO CLASS VALUES('C501-02','C501',2012,1,'B','92502','204호',25)

INSERT INTO CLASS VALUES('C301-01','C301',2012,2,'A','92502','301호',30)

INSERT INTO CLASS VALUES('C302-01','C302',2012,2,'A','92501','209호',45)

INSERT INTO CLASS VALUES('C502-01','C502',2012,2,'A','92001','209호',30)

INSERT INTO CLASS VALUES('C502-02','C502',2012,2,'B','92301','103호',26)

insert into takes values('1292001', 'C101-01', 'B+')

insert into takes values('1292001', 'C103-01', 'A+')

insert into takes values('1292001', 'C301-01', 'A')

insert into takes values('1292002', 'C102-01', 'A')

insert into takes values('1292002', 'C103-01', 'B+')

insert into takes values('1292002', 'C502-01', 'C+')

insert into takes values('1292003', 'C103-02', 'B')

insert into takes values('1292003', 'C501-02', 'A+')

insert into takes values('1292301', 'C102-01', 'C+')

insert into takes values('1292303', 'C102-01', 'C')

insert into takes values('1292303', 'C103-02', 'B+')

insert into takes values('1292303', 'C501-01', 'A+')


SELECT *FROM STUDENT

SELECT *FROM DEPARTMENT

SELECT *FROM CLASS

SELECT *FROM PROFESSOR

SELECT *FROM TAKES

SELECT *FROM COURSE

UPDATE STUDENT 
SET YEAR =YEAR -1


UPDATE PROFESSOR 
SET POSITION  ='교수', dept_id='923'
WHERE name = '고희석'

DELETE FROM PROFESSOR 
WHERE name='김태석'

SELECT S.NAME,D.DEPT_NAME
FROM STUDENT S,DEPARTMENT d 
WHERE S.DEPT_ID =D.DEPT_ID 

SELECT *
FROM STUDENT s1, STUDENT s2
WHERE s1.ADDRESS =s2.ADDRESS 
AND s1.name='김광식'

SELECT name, POSITION, 2023-YEAR_emp 재직연수
FROM PROFESSOR

SELECT name, address
FROM STUDENT 
WHERE address='서울'

FROM  STUDENT 
WHERE name='김광식'
FROM STUDENT

WHERE	YEAR = 3 OR YEAR =4 
ORDER BY name DESC, stu_id


SELECT *
FROM STUDENT 
WHERE resident_id LIKE '%*2%' 
OR resident_id LIKE 

SELECT title,credit,YEAR,semester
FROM COURSE,CLASS 
WHERE course.COURSE_ID =class.CLASS_ID (+)

SELECT title,credit,YEAR,semester
FROM COURSE,CLASS 
WHERE  course.COURSE_ID =class.COURSE_ID 



MINUS 
SELECT STU_ID 
FROM TAKES
WHERE grade = 'A+'

SELECT title
FROM COURSE 
WHERE course_id in 
(SELECT  DISTINCT course_id
FROM CLASS 
WHERE classroom = '301호'
)

SELECT DISTINCT title
FROM COURSE c1, CLASS c2
WHERE c1.COURSE_ID =c2.COURSE_ID  AND 
CLASSroom = '301호'  

SELECT title
FROM COURSE 
WHERE course_id NOT IN 
(SELECT DISTINCT course_id
FROM CLASS 
WHERE YEAR = 2012 AND semester = 2)


CREATE  OR REPLACE VIEW v_takes AS 
SELECT stu_id, class_id
FROM TAKES 


SELECT * 
FROM  V_TAKES