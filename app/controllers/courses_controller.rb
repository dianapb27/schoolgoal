class CoursesController < ApplicationController
  def index
    # @courses = policy_scope(Course)
    if params[:category].present?
      @courses = Course.where(category: params[:category])
    else
      @courses = Course.all
    end
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
