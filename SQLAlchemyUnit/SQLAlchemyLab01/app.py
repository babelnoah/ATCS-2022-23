"""
Our main application logic
"""

from database import init_db, db_session
from models import *
from sqlalchemy import func

# Initialize our database
init_db()

# Query 1: Name and salary of every employee
print("\nQuery 1: ")
results = db_session.query(Employee).all()
for employee in results:
    print(employee.name, employee.salary)

# Query 2: Names of employees in engineering
print("\nQuery 2: ")
results = db_session.query(Employee).where(Employee.department_id == 2)
for employee in results:
    print(employee.name)


# Query 3: Name of the department with the highest budget
print("\nQuery 3: ")
results = db_session.query(Department).order_by(Department.budget.desc()).limit(1)
for department in results:
    print(department.name)
# Query 4: Total salary paid to members of each department
print("\nQuery 4: ")
results = db_session.query(func.sum(Employee.salary).label("total_salary"), Employee.department_id).group_by(Employee.department_id)
for row in results:
    print(row.total_salary, row.department_id)


# Query 5: Average salary of employee in each role
print("\nQuery 5: ")
results = db_session.query(func.avg(Employee.salary).label("avg_salary"), Employee.role).group_by(Employee.role)
for row in results:
    print(row.avg_salary, row.role)

# Join Query 1: Write code that prints which departments are in which cities.
print("\n Join Query 1: ")
results = db_session.query(Department,City).join(City,City.id==Department.city_id)
for dept, cty in results:
    print(dept.name,cty.city)


# Join Query 2: Write code that prints the budget of each department as well as the total salary paid to the employees of that department.
print("\n Join Query 2: ")
results = db_session.query(Department, func.sum(Employee.salary).label("total_salary")).join(Employee,Employee.department_id==Department.id).group_by(Employee.department_id)
for dept, total_salary in results:
    print(dept.name,dept.budget,total_salary)


# Join Query 3: Write code that prints the population of each city that an employee lives in
print("\n Join Query 3: ")
results = db_session.query(Employee,Department,City).join(Department,Employee.department_id==department.id).join(City,City.id==Department.city_id)
for emp,dept,cty in results:
    print(emp.name,cty.city,cty.population)

# Join Query 4: Write code that prints the average salary in each city..
print("\n Join Query 4: ")
results = db_session.query(City, Department,func.avg(Employee.salary).label("avg_salary")).join(Department,Department.city_id==City.id).join(Employee,Employee.department_id==Department.id).group_by(City.city)
for cty,dept,avg_salary in results:
    print(cty.city,cty.state,avg_salary)


# Remove the session at the very end
db_session.remove()
