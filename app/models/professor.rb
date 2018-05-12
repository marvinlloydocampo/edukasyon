class Professor < ApplicationRecord
  has_many :professor_subjects
  has_many :subjects, through: :professor_subjects

  def full_name
    first_name + ' ' + last_name
  end
end
