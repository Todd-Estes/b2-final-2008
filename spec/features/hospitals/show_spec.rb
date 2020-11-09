require 'rails_helper'

describe 'Doctors Show Page' do
  it "can visit a show page and see doctors name, specialty, doctorate universty, and all patient names" do
    hospital = Hospital.create(name: "General Hospital")
    doctor_1 = Doctor.create(name: "Dewey Cox",
                           specialty: "Neurology",
                           university: "Harvard",
                          hospital_id: hospital.id)
    doctor_2 = Doctor.create(name: "Debbie Smith",
                           specialty: "Cardiology",
                           university: "UT Austin",
                          hospital_id: hospital.id)
    doctor_3 = Doctor.create(name: "Ann Rice",
                           specialty: "Dentistry",
                           university: "UT Austin",
                          hospital_id: hospital.id)

                          require "pry"; binding.pry

    visit "hospitals/#{hospital.id}"
    expect(page).to have_content(hospital.name)

    expect(page).to have_content(hospital.doctor_count)
    expect(page).to have_content(doctor_1.university)
    expect(page).to have_content(doctor_2.university)
  end
end
