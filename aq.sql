
SELECT COUNT(*) SAY FROM STUDENT
WHERE ACTIVE = 1; 

SELECT COUNT(ID) SAY FROM STUDENT
WHERE ACTIVE = 1; 

SELECT SUM(AMOUNT) FROM PAYMENT
WHERE ACTIVE = 1;

SELECT P.ID, S.NAME||' '||S.SURNAME STUDENT_FULL_NAME, T.NAME, T.SURNAME, L.NAME, P.AMOUNT, P.PAY_DATE FROM PAYMENT P
INNER JOIN STUDENT S ON P.STUDENT_ID = S.ID
INNER JOIN TEACHER T ON P.TEACHER_ID = T.ID
INNER JOIN LESSON L ON P.LESSON_ID = L.ID
WHERE P.ACTIVE = 1;

SELECT P.ID, T.NAME, T.SURNAME, SUM(P.AMOUNT) FROM PAYMENT P
INNER JOIN TEACHER T ON P.TEACHER_ID = T.ID
WHERE P.ACTIVE = 1
GROUP BY P.ID, T.NAME, T.SURNAME;

SELECT S.NAME, S.SURNAME, SUM(P.AMOUNT) AMOUNT FROM PAYMENT P
    INNER JOIN STUDENT S ON P.STUDENT_ID = S.ID
WHERE P.ACTIVE = 1
GROUP BY S.NAME, S.SURNAME
HAVING SUM(P.AMOUNT) >= 300;

