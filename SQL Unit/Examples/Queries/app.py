"""
Our main application logic
"""

from database import init_db, db_session
from models import *
from sqlalchemy import func

# Initialize our database
init_db()


print("\nQuery 1: ")
result = db_session.query(City)

for city in result:
    print(city.city,city.state,city.population)

print("\nQuery 2: ")
result = db_session.query(City).where(City.state=="New York")

for city in result:
    print(city.city,city.state,city.population)

print("\nQuery 3: ")

result = db_session.query(City).where(City.state=="New York") & (City.id <3)

for city in result:
    print(city.city,city.state,city.id)

print("\nQuery 4: ")
result =db_session.query(City).order_by(City.population.desc()).all()

for city in result:
    print(city.city,city.state,city.population)

print("\nQuery 5: ")
result = db_session.query(City.state,funk.sum(City.population).label("total_pop")).group_by(City.state)

for state,pop in result:
    print(state,pop)

# Remove the session at the very end
db_session.remove()
