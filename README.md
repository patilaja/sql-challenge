
## Employee Salary Analysis

Major task is to research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

### Tasks:  

#### Data Modeling

* Inspect the CSVs and sketch out an ERD of the tables. 

#### Data Engineering

* Use the information you have to create a table schema for each of the six CSV files. Specify data types, primary keys, foreign keys, and other constraints. 
* Be sure to create tables in the correct order to handle foreign keys.
* Import each CSV file into the corresponding SQL table. 

#### Data Analysis

* List the following details of each employee: 
	* employee number, last name, first name, sex, and salary.
* List first name, last name, and hire date for 
	* employees who were hired in 1986.
* List the manager of each department with the following information: 
	* department number, department name, the manager's employee number, last name, first name.
* List the department of each employee with the following information: 
	* employee number, last name, first name, and department name.
* List first name, last name, and sex for 
	* employees whose first name is "Hercules" and last names begin with "B."
* List all employees in the Sales department, including their 
	* employee number, last name, first name, and department name.
* List all employees in the Sales and Development departments, including their 
	* employee number, last name, first name, and department name.
* In descending order, list the frequency count of 
	* employee last names, i.e., how many employees share each last name.

## Pandas and PostgreSQL

### Visualization of the data:

* Import the SQL database into Pandas. 
* Create a histogram to visualize the most common salary ranges for employees.
* Create a bar chart of average salary by title.

#### Submission

* ERD file is located at EmployeeSQL\ERD Diagram
* SQL file of table schemata is located at EmployeeSQL\SQL Queries
* SQL file of Data Analysis is located at EmployeeSQL\SQL Queries
* Visualization charts are located at EmployeeSQL\Charts

#### Copyright
Trilogy Education Services © 2019. All Rights Reserved.
