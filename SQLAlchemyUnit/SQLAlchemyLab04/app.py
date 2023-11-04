"""
Our main application logic
"""

from database import init_db, db_session
from models import *
from sqlalchemy import func

"""
This function assumes the user makes 
no mistakes and that there are no duplicates
"""
def update_appt():
    name = input("What is your pet's name?\n")
    date = input("\nWhen is the appointment you would like to change? (YYYY-MM-DD)\n")

    # Get the pet and appointment
    pet = db_session.query(Pet).where(Pet.name==name).first()
    appt = db_session.query(Appointment).where((Appointment.pet_id==pet.id) & (Appointment.date == date)).first()

    print("\nGreat! I have the following appointment:")
    print(appt)

    response = input("\nWould you like to reschedule or cancel this appointment?\n")

    if response == "cancel":
        appt.pet_id = None
        db_session.commit()
        print("Your appointment has been cancelled. Thank you!")
    else:
        print("\nHere are the available appointments for " + str(appt.vet))
        
        # TODO: Complete this section to reschedule the appointment
        available_appts = appt.vet.get_available_appts()
        i = 1
        for available_appt in available_appts:
            print(str(i) + ". " + str(available_appt))
            i+=1

        choice = int(input("\nWhat appointment would you like to change? (Number only)"))-1
        chosen_appt = available_appts[choice]
        chosen_appt.pet_id = pet.id
        appt.pet_id = None

        print("\nYou have rescheduled your appointment to " + str(chosen_appt) + ".")

        verify = input("Is that correct? (Y/N)\n")
        if(verify == "N"):
            print("Oh well. Better luck next time.")
            db_session.rollback()
        else:
            print("Your appointment has been updated")
            db_session.commit()

# Initialize our database
init_db()

update_appt()

# Remove the session at the very end
db_session.remove()
