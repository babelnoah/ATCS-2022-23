"""
The file that holds the schema/classes
that will be used to create objects
and connect to data tables.
"""

from sqlalchemy import ForeignKey, Column, INTEGER, TEXT
from database import Base

class City(Base):
    __tablename__ = "cities"

    # Columns
    id = Column("id", INTEGER, primary_key=True)
    city = Column("city", TEXT, nullable=False)
    state = Column("state", TEXT, nullable=False)
    population = Column("population", INTEGER)

    # Constructor
    def __init__(self, city, state, population=None):
        # id autoincrements
        self.city = city
        self.state = state
        self.population = population

class Department(Base):
    __tablename__ = "departments"

    # Columns
    id = Column("id", INTEGER, primary_key=True)
    name = Column("name", TEXT, nullable=False)
    budget = Column("budget", INTEGER)
    city_id = Column("city_id", ForeignKey("cities.id"), nullable=False)

    # Constructor
    def __init__(self, name, budget, city_id):
        # id auto-increments
        self.name = name
        self.budget = budget
        self.city_id = city_id

class Employee(Base):
    __tablename__ = "employees"

    # Columns
    id = Column("id", INTEGER, primary_key=True)
    name = Column("name", TEXT, nullable=False)
    department_id = Column("department_id", ForeignKey("departments.id"))
    role = Column("role", TEXT)
    salary = Column("salary", INTEGER)

    # Constructor
    def __init__(self, name, department_id=None, role=None, salary=None):
        # id auto-increments
        self.name = name
        self.department_id = department_id
        self.role = role
        self.salary = salary
    