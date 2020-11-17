class CoursesController < ApplicationController
  def index
  end

  def new
    authorize @course
  end

  def create
    authorize @course
  end

  def 

end
