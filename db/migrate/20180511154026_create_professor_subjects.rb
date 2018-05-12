class CreateProfessorSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :professor_subjects do |t|
      t.integer :professor_id
      t.integer :subject_id

      t.timestamps
    end
  end
end
