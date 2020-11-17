class CoursesController < ApplicationController
  def index
    @courses = policy_scope(Course)
  end

  def new
    @course = Course.new
  end

  def create
  end

  def edit
  end

end
