class CreateSubjectsProfessorsJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :subjects, :professors do |t|
      t.index :subject_id
      t.index :professor_id
    end
  end
end
