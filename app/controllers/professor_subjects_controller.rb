class ProfessorSubjectsController < ApplicationController
  before_action :set_professor_subject, only: [:show, :edit, :update, :destroy]

  # GET /professor_subjects
  # GET /professor_subjects.json
  def index
    @professor_subjects = ProfessorSubject.all
    @subjects = Subject.all
    @professors = Professor.all
  end

  # GET /professor_subjects/1
  # GET /professor_subjects/1.json
  def show
  end

  # GET /professor_subjects/new
  def new
    @professor_subject = ProfessorSubject.new
  end

  # GET /professor_subjects/1/edit
  def edit
  end

  # POST /professor_subjects
  # POST /professor_subjects.json
  def create
    @professor_subject = ProfessorSubject.new(professor_subject_params)

    respond_to do |format|
      if @professor_subject.save
        format.html { redirect_to @professor_subject, notice: 'Professor subject was successfully created.' }
        format.json { render :show, status: :created, location: @professor_subject }
      else
        format.html { render :new }
        format.json { render json: @professor_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /professor_subjects/1
  # PATCH/PUT /professor_subjects/1.json
  def update
    respond_to do |format|
      if @professor_subject.update(professor_subject_params)
        format.html { redirect_to @professor_subject, notice: 'Professor subject was successfully updated.' }
        format.json { render :show, status: :ok, location: @professor_subject }
      else
        format.html { render :edit }
        format.json { render json: @professor_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /professor_subjects/1
  # DELETE /professor_subjects/1.json
  def destroy
    @professor_subject.destroy
    respond_to do |format|
      format.html { redirect_to professor_subjects_url, notice: 'Professor subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_professor_subject
      @professor_subject = ProfessorSubject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def professor_subject_params
      params.require(:professor_subject).permit(:subject_id, :professor_id)
    end
end
