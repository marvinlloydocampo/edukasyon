class StudentProfessorSubject < ApplicationRecord
  belongs_to :student
  belongs_to :professor_subject

  validates_uniqueness_of :student_id, scope: :professor_subject_id
end
