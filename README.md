# Pewlett-Hackard-Analysi
## Overview of the analysis:
The purpose of this analysis is to create an employee database using SQL and data modelling,engineering and analysis skill for helping Bobby who is an HR analysist
whose task is to perform employees research to determine 
### 1. Who will be eligible for retiring based on certain age criteria
### 2. How many positions need to be filled up.

## Results:
Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.
### 1. The retirement_titles csv list
#### the emp_no
#### first_name
#### last_name
#### title
#### from_ date
#### to_date 
This columns are listed based on employees birthdate ,employees who were born in between 1952 to 1955 and order by emp_no
![](Resources/retirement_titles.png?raw=true)

### 2. The unique_titles csv list
#### the emp_no
#### first_name
#### last_name
#### title
This columns are listed based DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows and then Sort the Unique Titles table in ascending order by the employee number and descending order by the last date (i.e. to_date) of the most recent title.
![](Resources/unique_titles.png?raw=true)
### 3.The retiring_titles csv list retrieve the number of employees by their most recent job title who are about to retire
 The columns are
#### count

#### title
First, retrieve the number of titles from the Unique Titles table
Then, create a Retiring Titles table to hold the required information.
Group the table by title, then sort the count column in descending order.
![](Resources/retiring_titles.png?raw=true)

### 4. The mentorship_eligibility csv
This csv file list all the current emloyees who meet certain age criteria like whose birth dates are between January 1, 1965 and December 31, 1965 can help to
train future job opening after the retirement of thousands of employees.
#### emp_no
#### first_name
#### last_name
#### birthdate
#### from_date
#### to_date
#### title
This columns have been listed based on  DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows and  then Order the table by the employee number.
![](Data/mentorship_eligibility.png?raw=true)
## Summary:
Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
How many roles will need to be filled as the "silver tsunami" begins to make an impact?
Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

So we can see from the retiring_titles csv that around
29414 Senior Engineer
28254  Senior Staff
14222 Engineer
12243 Staff
4502 Technique Leader
1761 Assistant Engineer
2 Manager will be retiring 
So total job vacancy will be 90398
From the mentorship_eligibility_title csv we can see that in total around 1549 current employees are there who can help to train future job opening positions.
![](Resources/VBA_Challenge_2017.png?raw=true)
