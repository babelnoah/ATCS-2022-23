"""
The file that holds the schema/classes
that will be used to create objects
and connect to data tables.
"""

from sqlalchemy import ForeignKey, Column, INTEGER, TEXT
from sqlalchemy.orm import relationship
from database import Base

class Owner(Base):
    __tablename__ = "owners"

    # Columns
    id = Column("id", INTEGER, primary_key=True)
    first_name = Column("first_name", TEXT, nullable=False)
    last_name = Column("last_name", TEXT, nullable=False)
    email = Column("email", TEXT, nullable=False)
    phone_number = Column("phone_number", TEXT, nullable=False)
    pets = relationship ("Pet", back_populates="owner")

    # Constructor
    def __init__(self, first_name, last_name, email, phone_number):
        # id auto-increments
        self.first_name = first_name
        self.last_name = last_name
        self.email = email
        self.phone_number = phone_number
    
    def __repr__(self):
        return self.last_name + ", " + self.first_name + " #" + self.phone_number

class Vet(Base):
    __tablename__ = "vets"

    # Columns
    id = Column("id", INTEGER, primary_key=True)
    first_name = Column("first_name", TEXT, nullable=False)
    last_name = Column("last_name", TEXT, nullable=False)
    appts = relationship("Appointment", back_populates="vet")

    # Constructor
    def __init__(self, first_name, last_name):
        # id auto-increments
        self.first_name = first_name
        self.last_name = last_name
    
    def __repr__(self):
        return "Dr. " + self.last_name

    # TODO: Add get_available_appts
    def get_available_appts(self):
        available_appts=[]
        for appt in self.appts:
            if appt.is_available():
                available_appts.append(appt)
        return available_appts

class Pet(Base):
    __tablename__ = "pets"

    # Columns
    id = Column("id", INTEGER, primary_key=True)
    name = Column("name", TEXT, nullable=False)
    species = Column("species", TEXT, nullable=False)
    owner_id = Column("owner_id", ForeignKey("owners.id"))
    owner = relationship ("Owner", back_populates="pets")
    appts = relationship("Appointment", back_populates="pet")
    

    # Constructor
    def __init__(self, name, species, owner_id=None):
        # id auto-increments
        self.name = name
        self.species = species
        self.owner_id = owner_id

class Appointment(Base):
    __tablename__ = "appts"

    # Columns
    id = Column("id", INTEGER, primary_key=True)
    pet_id = Column("pet_id", ForeignKey("pets.id"))
    vet_id = Column("vet_id", ForeignKey("vets.id"))
    date = Column("date", TEXT)
    time = Column("time", TEXT)
    pet = relationship("Pet", back_populates="appts")
    vet = relationship("Vet", back_populates="appts")

    # Constructor
    def __init__(self, pet_id, vet_id, date=None, time=None):
        # id auto-increments
        self.pet_id = pet_id
        self.vet_id = vet_id
        self.date = date
        self.time = time  
    
    # TODO: Add __repr__
    def __repr__(self):
        return self.date + " at " + self.time + " with Dr. " + self.vet.last_name
    
    # TODO: Add is_available
    def is_available(self):
        return self.pet_id == None