-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Departments" (
    "dept_no" varchar(5)   NOT NULL,
    "dept_name" varchar(100)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "DeptEmployee" (
    "emp_no" int   NOT NULL,
    "dept_no" varchar(5)   NOT NULL,
    CONSTRAINT "pk_DeptEmployee" PRIMARY KEY (
        "emp_no","dept_no"
     )
);

CREATE TABLE "DeptManager" (
    "dept_no" varchar(5)   NOT NULL,
    "emp_no" int   NOT NULL,
    CONSTRAINT "pk_DeptManager" PRIMARY KEY (
        "dept_no","emp_no"
     )
);

CREATE TABLE "Employee" (
    "emp_no" int   NOT NULL,
    "emp_title_id" varchar(5)   NOT NULL,
    "birth_date" varchar(10)   NOT NULL,
    "first_name" text   NOT NULL,
    "last_name" text   NOT NULL,
    "sex" char(1)   NOT NULL,
    "hire_date" varchar(10)   NOT NULL,
    CONSTRAINT "pk_Employee" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Salary" (
    "emp_no" int   NOT NULL,
    "salary" money   NOT NULL,
    CONSTRAINT "pk_Salary" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Title" (
    "title_id" varchar(5)   NOT NULL,
    "title" text   NOT NULL,
    CONSTRAINT "pk_Title" PRIMARY KEY (
        "title_id"
     )
);

ALTER TABLE "DeptEmployee" ADD CONSTRAINT "fk_DeptEmployee_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employee" ("emp_no");

ALTER TABLE "DeptEmployee" ADD CONSTRAINT "fk_DeptEmployee_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "DeptManager" ADD CONSTRAINT "fk_DeptManager_dept_no_emp_no" FOREIGN KEY("dept_no", "emp_no")
REFERENCES "DeptEmployee" ("dept_no", "emp_no");

ALTER TABLE "Employee" ADD CONSTRAINT "fk_Employee_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Salary" ("emp_no");

ALTER TABLE "Employee" ADD CONSTRAINT "fk_Employee_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "Title" ("title_id");

