class CreateStudentProfessorSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :student_professor_subjects do |t|
      t.integer :student_id
      t.integer :professor_subject_id
      t.string :description

      t.timestamps
    end
  end
end
