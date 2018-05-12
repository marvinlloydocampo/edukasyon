class Professor < ApplicationRecord
  ratyrate_rateable "overall_rate"
  has_many :professor_subjects
  has_many :subjects, through: :professor_subjects
end
