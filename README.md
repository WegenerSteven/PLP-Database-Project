# PLP-Database-Project

## Introduction

Welcome to my SQL Data Analysis assignment repository. This repository contains all the SQL queries and findings from the analysis of a chosen dataset. 
The assignment involves importing a dataset into MySQL, performing various SQL queries to uncover insights, and documenting the process and results.

## Repository Structure
SQL_Data_Analysis_Assignment/
│
├── Data_Dive_Notes.txt
├── Data_Fun_Queries.txt
├── Ask_Away_Queries.txt
├── Dataset/
│ └── [netflix_titles.csv].
└── README.md


## Dataset

For this assignment, I chose the netflix_titles dataset. The dataset contains different netflix movie titles. The dataset file is stored in the `Dataset` folder.

## Step 1: Data Dive

### Importing Dataset

The dataset was imported into MySQL Workbench. Here are the steps followed:

1. Created a new schema in MySQL Workbench.
2. Used the "Table Data Import Wizard" to import the dataset into the schema.

### Notes

**Difficulties:**
- The dataset was quite large, which caused some performance issues during the import process.
- Some data had missing values, which needed to be handled.

**Interesting Observation:**
- In the Netflix Shows dataset, there is a significant increase in the number of shows released after 2015.

Refer to `Data_Dive_Notes.txt` for more details.

## Step 2: Data Fun

### SQL Queries

To explore the dataset, I wrote several SQL queries using functions like `COUNT`, `AVG`, and `SUM`. Below are two interesting findings from the data:

1. **Total Number of Shows:**
   ```sql
   SELECT COUNT(*) AS total_shows FROM netflmovies;
  Results: 100 shows
2. Average Runtime of Shows:
   ```sql
   SELECT AVG(CAST(SUBSTRING_INDEX(duration, ' ', 1) AS DECIMAL(10,2))) AS average_duration

   FROM netflmovies

   WHERE duration LIKE '%min%';
```
Results: 100.727273
3.  Total Number of Seasons
   ```sql
   SELECT SUM(CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED)) AS total_seasons

   FROM netflmovies

   WHERE duration LIKE '%season%';
```
  Results: 106 seasons
  
## Step 3: Ask Away

### Questions and Queries[SQL PROJECT QUERIES.docx](https://github.com/user-attachments/files/15944556/SQL.PROJECT.QUERIES.docx)


Question 1: What are the top 5 highest-rated shows released after 2018?
SQL Query:
```sql
SELECT title, rating
FROM netflmovies
WHERE release_year > 2018
ORDER BY rating DESC
LIMIT 5;
```
Findings: 
```bash
 title              	                      rating
	Chhota Bheem	                            TV-Y7
	He-Man and the Masters of the Universe	  TV-Y7
	Little Singham - Black Shadow          	  TV-Y7
	Tayo and Little Wizards	                  TV-Y7
	Tobot Galaxy Detectives	                  TV-Y7
```
# What We Learned:
This query helps us identify the top 5 highest-rated shows that were released after 2018. 
This is useful for understanding recent trends and popular content among newer releases. 
The result will give us an idea of which shows have received the highest acclaim in recent years.

Question 2: What is the average rating of shows released after 2015?
SQL Query:
```sql
SELECT AVG(rating) AS average_rating
FROM netflmovies
WHERE release_year > 2015;
```
Findings: 0

## Conclusion
For any questions or feedback, feel free to contact me at [shikhulebenard@gmail.com] or [+254114957666].


   

