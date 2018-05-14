class StudentProfessorSubjectsController < ApplicationController
  before_action :set_student_professor_subject, only: [:update]

  # PATCH/PUT /student_professor_subjects/1
  # PATCH/PUT /student_professor_subjects/1.json
  def update
    respond_to do |format|
      if @student_professor_subject.update(student_professor_subject_params)
        format.html { redirect_to @student_professor_subject }
        format.json { render :show, status: :ok, location: @student_professor_subject }
      else
        format.html { render :edit }
        format.json { render json: @student_professor_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_professor_subject
      @student_professor_subject = StudentProfessorSubject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_professor_subject_params
      params.require(:student_professor_subject).permit(:student_id, :professor_subject_id, :description)
    end
end
