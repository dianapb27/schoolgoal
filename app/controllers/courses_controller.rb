class CoursesController < ApplicationController
  def index
    # @courses = policy_scope(Course)
    if params[:category].present?
      @courses = Course.where(category: params[:category])
    else
      @courses = Course.all
    end
  end

  def new
    @course = Course.new
    @category = [
      'Spanish',
      'German',
      'Chinese',
      'Japanese',
      'English',
      'Math',
      'Science',
      'Art',
      'Music',
      'History'
    ]
  end

  def create
  end

  def edit
  end

end
