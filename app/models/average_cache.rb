class AverageCache < ActiveRecord::Base
  belongs_to :rater, :class_name => "Student"
  belongs_to :rateable, :polymorphic => true
end
