class ProfessorSubject < ApplicationRecord
  ratyrate_rateable "overall_rate"
  belongs_to :professor
  belongs_to :subject
end
