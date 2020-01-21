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

/* Q6 Show the average star rating for each state. The output should show 
the state as state and the average rating for the state as avg_rating. 
Which state shows the highest average rating? */

/* Q7 Select unique job titles from the data_analyst_jobs table. How many are there? */

/* Q8 How many unique job titles are there for California companies? */

/* Q9 Find the name of each company and its average star rating for 
all companies that have more than 5000 reviews across all locations. 
How many companies are there with more that 5000 reviews across all locations? */

/* Q10 Add the code to order the query in #9 from highest to lowest average star rating. 
Which company with more than 5000 reviews across all locations in the dataset 
has the highest star rating? What is that rating? */

/* Q11 Find all the job titles that contain the word ‘Analyst’. 
How many different job titles are there? */

/* Q12 How many different job titles do not contain either the word ‘Analyst’ 
or the word ‘Analytics’? What word do these positions have in common? */
