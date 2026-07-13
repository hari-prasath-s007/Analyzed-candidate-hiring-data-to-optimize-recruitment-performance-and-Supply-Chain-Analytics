-------------------------After import, verify--------------------------
SELECT * FROM RECRUITMENT;
--------------------------Total Records-------------------------------
SELECT COUNT(*) FROM RECRUITMENT;
--------------------------Check Missing Salary-------------------------
SELECT * FROM RECRUITMENT WHERE SALARY IS NULL;
-------------------------Check Duplicate Applications--------------------
SELECT APPLICATION_ID,
       COUNT(*)
FROM RECRUITMENT
GROUP BY APPLICATION_ID
HAVING COUNT(*) > 1;
--------------------------Total Applications----------------------------
SELECT COUNT(*) AS TOTAL_APPLICATIONS
FROM RECRUITMENT;
---------------------------Department-wise Applications---------------------
SELECT DEPARTMENT,
       COUNT(*) AS APPLICATIONS
FROM RECRUITMENT
GROUP BY DEPARTMENT;
---------------------------Recruitment Source Analysis----------------------
SELECT SOURCE,
       COUNT(*) AS TOTAL
FROM RECRUITMENT
GROUP BY SOURCE
ORDER BY TOTAL DESC;
----------------------------Gender Distribution-----------------------------
SELECT GENDER,
       COUNT(*)
FROM RECRUITMENT
GROUP BY GENDER;
-----------------------------City-wise Candidates---------------------------
SELECT CITY,
       COUNT(*)
FROM RECRUITMENT
GROUP BY CITY;
------------------------------Average Salary by Department------------------
SELECT DEPARTMENT,
       ROUND(AVG(SALARY),2) AS AVG_SALARY
FROM RECRUITMENT
GROUP BY DEPARTMENT;
--------------------------------Highest Salary------------------------------
SELECT MAX(SALARY)
FROM RECRUITMENT;
-------------------------------Lowest Salary-------------------------------
SELECT MIN(SALARY)
FROM RECRUITMENT;
-------------------------------Top 10 Highest Salaries---------------------
SELECT *
FROM (
    SELECT *
    FROM RECRUITMENT
    WHERE SALARY IS NOT NULL
    ORDER BY SALARY DESC
)
WHERE ROWNUM <= 10;
------------------------------Intermediate SQL-----------------------------
SELECT DEPARTMENT,
       COUNT(*) TOTAL_HIRES,
       AVG(SALARY) AVG_SALARY
FROM RECRUITMENT
WHERE JOINING_STATUS='Joined'
GROUP BY DEPARTMENT
HAVING COUNT(*) > 10;
-----------------------------Window Functions-----------------------------
SELECT CANDIDATE_NAME,
       DEPARTMENT,
       SALARY,
       RANK() OVER(ORDER BY SALARY DESC) SALARY_RANK
FROM RECRUITMENT;
----------------------------Department-wise Salary Rank---------------------
SELECT CANDIDATE_NAME,
       DEPARTMENT,
       SALARY,
       DENSE_RANK() OVER(
           PARTITION BY DEPARTMENT
           ORDER BY SALARY DESC
       ) DEPT_RANK
FROM RECRUITMENT;
-----------------------------Running Total Salary---------------------------
SELECT APPLICATION_ID,
       SALARY,
       SUM(SALARY)
       OVER(ORDER BY APPLICATION_ID)
FROM RECRUITMENT;
---------------------------Create SQL Views----------------------------
----------------View-1
CREATE VIEW VW_RECRUITMENT_SUMMARY AS
SELECT
    DEPARTMENT,
    COUNT(*) TOTAL_APPLICATIONS,
    AVG(SALARY) AVG_SALARY,
    COUNT(CASE WHEN JOINING_STATUS='Joined' THEN 1 END) TOTAL_HIRES
FROM RECRUITMENT
GROUP BY DEPARTMENT;
----------------View-2
CREATE VIEW VW_SOURCE_ANALYSIS AS
SELECT
    SOURCE,
    COUNT(*) APPLICATIONS
FROM RECRUITMENT
GROUP BY SOURCE;
-----------------View-3
CREATE VIEW VW_RECRUITER_PERFORMANCE AS
SELECT
    RECRUITER,
    COUNT(*) APPLICATIONS
FROM RECRUITMENT
GROUP BY RECRUITER;