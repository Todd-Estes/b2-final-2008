require 'rails_helper'

RSpec.describe Hospital do
  describe 'Relationships' do
    it {should have_many :doctors}
  end

  describe "Instance Methods" do
    it ".doctor_count" do
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
                             university: "Yale",
                            hospital_id: hospital.id)
    expect(hospital.doctor_count).to eq(3)
   end

   it ".educations" do
     hospital = Hospital.create(name: "General Hospital")
     doctor = Doctor.create(name: "Dewey Cox",
                            specialty: "Neurology",
                            university: "Harvard",
                           hospital_id: hospital.id)
     doctor = Doctor.create(name: "Debbie Smith",
                            specialty: "Cardiology",
                            university: "UT Austin",
                           hospital_id: hospital.id)
     doctor = Doctor.create(name: "Ann Rice",
                            specialty: "Dentistry",
                            university: "UT Austin",
                           hospital_id: hospital.id)
   expect(hospital.educations).to eq(["Harvard", "UT Austin"])
  end
 end
end
