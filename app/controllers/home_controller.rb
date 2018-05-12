class HomeController < ApplicationController
  before_action :authenticate_student!

  def index
    @subjects = Subject.all
  end

  def show
    @subject = Subject.find(params[:id])
  end
end
