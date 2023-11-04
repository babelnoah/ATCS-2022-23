"""
The file that holds the schema/classes
that will be used to create objects
and connect to data tables.
"""

from sqlalchemy import ForeignKey, Column, INTEGER, TEXT
from database import Base

class Owner(Base):
    __tablename__ = "owners"
    
    id = Column("id", INTEGER, primary_key=True)
    first_name = Column("first_name", TEXT)
    last_name = Column("last_name", TEXT)
    email = Column("email", TEXT)
    phone_number = Column("phone_number", TEXT)

    def __init__(self, first_name , last_name, phone_number):     
        self.first_name = first_name 
        self.last_name = last_name
        self.phone_number = phone_number

    def __repr__(self):
        return self.last_name + ", " + self.first_name + " #" + self.phone_number

class Vet(Base):
    __tablename__ = "vets"
    
    id = Column("id", INTEGER, primary_key=True)
    first_name = Column("first_name", TEXT)
    last_name = Column("last_name", TEXT)

    def __init__(self, first_name , last_name):     
        self.first_name = first_name 
        self.last_name = last_name

    def __repr__(self):
        return "Dr. " + self.last_name
    
class Pet(Base):
    __tablename__ = "pets"
    
    id = Column("id", INTEGER, primary_key=True)
    name = Column("name", TEXT)
    species = Column("species", TEXT)
    owner_id = Column("owner_id",ForeignKey("owners.id"),nullable=False)

    def __init__(self, first_name , last_name):     
        self.first_name = first_name 
        self.last_name = last_name

class Appointment(Base):
    __tablename__ = "appts"
    
    id = Column("id", INTEGER, primary_key=True)
    pet_id = Column("pet_id",ForeignKey("pet.id"),nullable=False)
    vet_id = Column("vet_id",ForeignKey("vet.id"),nullable=False)
    date = Column("date", TEXT)
    time = Column("time", TEXT)

    def __init__(self, date , time):     
        self.date = date 
        self.time = time