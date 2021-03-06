class ProfessorSubject < ApplicationRecord
  ratyrate_rateable "overall_rate"
  belongs_to :professor
  belongs_to :subject
  has_many :student_professor_subjects

  validates_uniqueness_of :professor_id, scope: :subject_id
end
