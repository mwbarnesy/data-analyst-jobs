/* Q1 How many rows are in the data_analyst_jobs table? */

SELECT COUNT(*)
FROM data_analyst_jobs;

--1793

/* Q2 Write a query to look at just the first 10 rows. What company is 
associated with the job posting on the 10th row? */

SELECT *
FROM data_analyst_jobs
LIMIT 10;

--ExxonMobil

/* Q3 How many postings are in Tennessee? How many are there in 
either Tennessee or Kentucky? */

SELECT COUNT(*)
FROM data_analyst_jobs
WHERE location = 'TN';

--21 postings

/* Q4 How many postings in Tennessee have a star rating above 4? */

SELECT COUNT(*)
FROM data_analyst_jobs
WHERE star_rating > 4;

--416 postings

/* Q5 How many postings in the dataset have a review count between 500 and 1000? */

SELECT COUNT(*)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;

--151 postings

/* Q6 Show the average star rating for each state. The output should show 
the state as state and the average rating for the state as avg_rating. 
Which state shows the highest average rating? */

SELECT location AS state, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
GROUP BY state
ORDER BY avg_rating DESC;

--NE shows the highest rating at 4.1999998090000000

/* Q7 Select unique job titles from the data_analyst_jobs table. How many are there? */

SELECT COUNT(DISTINCT(title))
FROM data_analyst_jobs;

--881 unique job titles

/* Q8 How many unique job titles are there for California companies? */

SELECT COUNT(DISTINCT(title))
FROM data_analyst_jobs
WHERE location = 'CA';

--230 unique job titles for CA companies

/* Q9 Find the name of each company and its average star rating for 
all companies that have more than 5000 reviews across all locations. 
How many companies are there with more that 5000 reviews across all locations? */


	SELECT company, AVG(star_rating) AS avg_rating, review_count
	FROM data_analyst_jobs
	GROUP BY company, review_count
	HAVING SUM(review_count) > 5000
	;

/* Q10 Add the code to order the query in #9 from highest to lowest average star rating. 
Which company with more than 5000 reviews across all locations in the dataset 
has the highest star rating? What is that rating? */

/* Q11 Find all the job titles that contain the word ‘Analyst’. 
How many different job titles are there? */

/* Q12 How many different job titles do not contain either the word ‘Analyst’ 
or the word ‘Analytics’? What word do these positions have in common? */
