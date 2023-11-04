"""
Our main application logic
"""

from database import init_db, db_session
from models import *
from sqlalchemy import func

# Initialize our database
init_db()

# Query 1: 
print("\nAll Owners: ")
results = db_session.query(Owner)
for owner in results:
    print(owner)

# # Query 2: 
print("\nAll Vets: ")
results = db_session.query(Vet)
for vet in results:
    print(vet)

# # Query 3:
print("\n5 Pets and their Owners: ")
results = db_session.query(Pet, Owner).join(Owner, Pet.owner_id == Owner.id).limit(5)
for pet, owner in results:
    print(owner.first_name, owner.last_name, "owns a", pet.species, "named", pet.name)

# # Query 3:
print("\n5 Appointments: ")
results = db_session.query(Appointment, Vet, Pet).join(Vet, Appointment.vet_id == Vet.id).join(Pet, Appointment.pet_id == Pet.id).limit(5)
for appt, vet, pet in results:
    print(vet, "has an appointment with " + pet.name + " on " + appt.date + " @" + appt.time)

# # Remove the session at the very end
db_session.remove()
