--Departments Table
CREATE TABLE "departments" (
    "dept_no" VARCHAR NOT NULL,
    "dept_name" VARCHAR NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY ("dept_no")
);

--Dept_emp Table
CREATE TABLE "dept_emp" (
    "emp_no" INT NOT NULL,
    "dept_no" VARCHAR NOT NULL,
	CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no") REFERENCES "departments" ("dept_no"),
	CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no") REFERENCES "employees" ("emp_no")
);

--Dept_manager Table
CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR NOT NULL,
    "emp_no" INT UNIQUE NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY ("dept_no","emp_no"),
	CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no") REFERENCES "employees" ("emp_no"),
	CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no") REFERENCES "departments" ("dept_no")
);

--Employees Table
CREATE TABLE "employees" (
    "emp_no" INT NOT NULL,
    "emp_title_id" VARCHAR NOT NULL,
    "birth_date" DATE NOT NULL,
    "first_name" VARCHAR NOT NULL,
    "last_name" VARCHAR NOT NULL,
    "sex" VARCHAR NOT NULL,
    "hire_date" DATE NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY ("emp_no"),
	CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id") REFERENCES "titles" ("title_id")
);

--Salaries Table
CREATE TABLE "salaries" (
    "emp_no" INT NOT NULL,
    "salary" INT NOT NULL,
	CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no") REFERENCES "employees" ("emp_no")
);

--Titles Table
CREATE TABLE "titles" (
    "title_id" VARCHAR NOT NULL,
    "title" VARCHAR NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY ("title_id")
);