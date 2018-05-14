class HomeController < ApplicationController
  before_action :authenticate_student!

  def index
    @subjects = Subject.all
  end

  def show
    @subject = Subject.find(params[:id])
    @subject.professor_subjects.each do |prof_sub|
      create_student_professor_subject(prof_sub.id)
    end
  end

  private

    def create_student_professor_subject(prof_sub_id)
      option = {
        student_id: current_student.id,
        professor_subject_id: prof_sub_id
      }
      if StudentProfessorSubject.where(option).blank?
        StudentProfessorSubject.create(option)
      end

    end
end
