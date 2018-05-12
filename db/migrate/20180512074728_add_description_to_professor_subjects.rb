class AddDescriptionToProfessorSubjects < ActiveRecord::Migration[5.1]
  def change
    add_column :professor_subjects, :description, :string
  end
end
