require 'rails_helper'

describe 'Doctors Show Page' do
  it "can visit a show page and see doctors name, specialty, doctorate universty, and all patient names" do
    hospital = Hospital.create(name: "General Hospital")
    doctor = Doctor.create(name: "Dewey Cox",
                           specialty: "Neurology",
                           university: "Harvard",
                          hospital_id: hospital.id)
    patient_1 = Patient.create(name: "Mike Brown",
                               age: 25)
    patient_2 = Patient.create(name: "Heather Smith",
                               age: 30)
    appointment_1 = Appointment.create(doctor_id: doctor.id,
                                      patient_id: patient_1.id)
    appointment_2 = Appointment.create(doctor_id: doctor.id,
                                      patient_id: patient_2.id)
    visit "/doctors/#{doctor.id}"
    save_and_open_page
    expect(page).to have_content(hospital.name)
    expect(page).to have_content(doctor.university)
    expect(page).to have_content(patient_1.name)
    expect(page).to have_content(patient_2.name)
  end
end
