class Hospital < ApplicationRecord
 has_many :doctors

 def doctor_count
   self.doctors.count(:id)
 end

 def educations
   self.doctors.distinct.pluck(:university)
 end
end
