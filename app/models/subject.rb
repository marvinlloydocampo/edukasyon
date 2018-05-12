class Subject < ApplicationRecord
  has_many :professor_subjects
  has_many :professors, through: :professor_subjects
  validates :name, presence: true
end
