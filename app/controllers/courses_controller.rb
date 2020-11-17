class CoursesController < ApplicationController
  def index
    # @courses = policy_scope(Course)
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
  end

  def edit
  end
end
